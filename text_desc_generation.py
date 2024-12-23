import pandas as pd
import os
from transformers import pipeline
import torch

domain_pddl_path = './data/DriverLog/Strips/driverlog.pddl'
strips_gt_pddl_dir_path = './data/DriverLog/Strips'

with open(domain_pddl_path, 'r') as domain_file:
    domain_pddl = domain_file.read()

gt_problem_pddl_data = []

for i in range(1, 21):
    problem_pddl_name = f"pfile{i}"
    numeric_gt_problem_pddl_path = os.path.join(strips_gt_pddl_dir_path, problem_pddl_name)

    with open(numeric_gt_problem_pddl_path, 'r') as problem_file:
        problem_pddl = problem_file.read()
        gt_problem_pddl_data.append({'FileName': problem_pddl_name, 'Content': problem_pddl})

gt_problem_pddl_df = pd.DataFrame(gt_problem_pddl_data)
gt_problem_pddl_df['Content'] = gt_problem_pddl_df['Content'].str.replace(r'\t|\n', '', regex=True)

print(gt_problem_pddl_df)

model_id = "meta-llama/Meta-Llama-3.1-8B-Instruct"
pipe = pipeline(
    "text-generation",
    model=model_id,
    model_kwargs={"torch_dtype": torch.float16},
    device="cuda",
)

descriptions = []

for index, row in gt_problem_pddl_df.iterrows():
    problem_pddl_name = row['FileName']
    problem_pddl_content = row['Content']
    
    messages = [
        {
            "role": "system",
            "content": f'''
                You are good at translating PDDL to natural language text.
                Your task is to translate the contents of a PDDL problem file into a natural language description.
                Please ensure that your output contains only the description of the problem in one paragraph, 
                including the initial and final states, without any additional explanation or steps. 
                Don't give bullet point descriptions.
                '''
        },
        {
            "role": "user",
            "content": f'''
            Translate the following problem.pddl content into a natural language description of one paragraph, no bullet points..
            Only include the natural language description, the initial state, and the final state.
            Here is the problem.pddl content:
            {problem_pddl_content}
            '''
        }
    ]

    outputs = pipe(
        messages,
        max_new_tokens=1028,
        do_sample=True,
    )
    
    response = outputs[0]["generated_text"]
    print(f"{response[2].get('content')}\n\n")
    
    descriptions.append({'Filename': problem_pddl_name, 'Description': response[2].get('content')})

descriptions_df = pd.DataFrame(descriptions)
print(descriptions_df)

output_csv_path = './problem_descriptions.csv'
descriptions_df.to_csv(output_csv_path, index=False)

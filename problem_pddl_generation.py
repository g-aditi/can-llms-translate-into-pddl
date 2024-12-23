import pandas as pd
import os
from transformers import pipeline
import torch

domain_pddl_path = './data/DriverLog/Strips/driverlog.pddl'
with open(domain_pddl_path, 'r') as domain_file:
    domain_pddl = domain_file.read()

input_csv_path = './problem_descriptions.csv'

descriptions_df = pd.read_csv(input_csv_path)

model_id = "meta-llama/Meta-Llama-3.1-8B-Instruct"
pipe = pipeline(
    "text-generation",
    model=model_id,
    model_kwargs={"torch_dtype": torch.float16},
    device="cuda",
)

output_pddl_dir = './generated_strips_problem_pddl'
os.makedirs(output_pddl_dir, exist_ok=True)

for index, row in descriptions_df.iterrows():
    filename = row['Filename']
    description = row['Description']

    messages = [
        {
            "role": "system",
            "content": f'''
                You are skilled at translating natural language descriptions into PDDL problem files.
                The domain file relevant to this problem is provided below. Use it to ensure the generated problem 
                file uses correct predicates, objects, and actions.
                Domain file:
                {domain_pddl}
                Generate a valid PDDL problem file that includes the problem's initial state and goal state. The output should 
                follow PDDL syntax and conventions. Do not include any explanations or additional text.
            '''
        },
        {
            "role": "user",
            "content": f'''
            Based on the description provided below, generate a valid PDDL problem file that includes the problem's 
            initial state and goal state. The output should follow PDDL syntax and conventions. Do not include any 
            explanations or additional text.
            {description}
            '''
        }
    ]
    
    outputs = pipe(
        messages,
        max_new_tokens=1028,
        do_sample=True,
    )
    
    problem_pddl_content = outputs[0]["generated_text"][2].get('content')
    
    output_pddl_path = os.path.join(output_pddl_dir, f"{filename}.pddl")
    with open(output_pddl_path, 'w') as pddl_file:
        pddl_file.write(problem_pddl_content)
    
    print(f"Generated {filename}.pddl successfully!")

print(f"All PDDL files have been saved to {output_pddl_dir}.")

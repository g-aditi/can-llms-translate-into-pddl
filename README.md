# Assessing LLM Performance in Structured Planning Translation

This project evaluates how effectively Large Language Models (LLMs) can translate natural language descriptions of planning tasks into valid Planning Domain Definition Language (PDDL) code. The research addresses the limitations of LLMs, particularly their struggles with domain-specific queries and the accuracy of generated plans. By leveraging scene graphs to represent initial and goal states, the study introduces a semantic evaluation method that goes beyond traditional syntactic validation, allowing for a more meaningful comparison between generated PDDL files and their ground truth counterparts.

## Key Features

* Dataset: Utilized the DriverLog domain, which includes logistics-based planning tasks.
* LLMs Tested: Evaluated several models, including Llama 3.1, GPT-4o, GPT-4o-mini, and Claude 3.5.
* Evaluation Methodology: Implemented semantic analysis through scene graphs and an edit distance metric to assess structural alignment between generated and ground truth PDDL files.

## Findings
Results indicated that while some models produced syntactically correct PDDL code, they often failed to align semantically with the original planning intent. Please read the report for further details.

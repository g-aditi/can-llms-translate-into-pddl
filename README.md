# Assessing LLM Performance in Structured Planning Translation

## Overview
This project evaluates the ability of Large Language Models (LLMs) to translate natural language planning problems into structured **Planning Domain Definition Language (PDDL)** representations.  By extending the **Planetarium benchmark** with the **DriverLog domain**, we introduce a semantic evaluation framework that captures not only syntactic correctness but also **semantic fidelity** through scene graphs and edit-distance analysis.

Our primary goal is to examine how well models like **GPT-4o**, **LLaMA-3.1**, and **Claude 3.5 (Haiku)** generate functionally meaningful PDDL code from textual descriptions of planning problems.


## Motivation
While LLMs demonstrate strong generative capabilities, their performance in structured reasoning tasks such as **automated planning** remains unreliable.  Earlier approaches focused on whether generated PDDL files were *syntactically solvable*, ignoring whether they accurately represented the intended task. This study introduces **semantic validation** to bridge that gap - measuring how closely the generated PDDL corresponds to the *meaning* of the problem in the source natural language prompt.


## Methodology
The methodology builds on the **Planetarium benchmark** with modifications for the **DriverLog logistics domain**.

1. **Dataset Construction**  
   - Adopted the DriverLog domain from the 2002 International Planning Competition (IPC).  
   - Each ground-truth `problem.pddl` file was converted into two textual variants:  
     - *Explicit descriptions* (technical and detailed)  
     - *Abstract descriptions* (vague and high-level)

2. **LLM Translation**  
   - Models tested: **LLaMA-3.1**, **Claude 3.5 (Haiku)**, **GPT-4o**, and **GPT-4o-mini**.  
   - Each model translated text descriptions back into `problem.pddl` files.  
   - Generated outputs were parsed and validated for **syntactic correctness**.

3. **Semantic Evaluation**  
   - Constructed **scene graphs** for both ground-truth and generated problems to capture relationships between entities.  
   - Measured **graph edit distance** to quantify semantic similarity.  
   - Both **initial** and **goal** state graphs were compared.


## Results
- **Claude 3.5 Haiku** achieved the highest solvability (≈60%) across both explicit and abstract problem descriptions.  
- **GPT-4o-mini** showed the weakest performance.  
- **Median semantic edit distances** between models were small, but variance differed notably - Claude’s generated files had higher structural complexity.  
- Importantly, syntactic solvability did **not** guarantee semantic correctness.

| Model | Solvable (%) | Median Edit Distance (Goal) |
|--------|--------------|-----------------------------|
| Claude 3.5 | 60 | 0 |
| GPT-4o | ~35 | 0 |
| LLaMA-3.1 | ~20 | 0 |
| GPT-4o-mini | <10 | 0 |

A key takeaway is that semantic alignment provides a more nuanced understanding of model performance than syntactic solvability alone.


## Limitations
- The current evaluation focuses only on **STRIPS-type PDDL** problems.  
- Equivalent but syntactically different PDDL representations are not captured by the edit-distance metric.  
- Results are limited by dataset scale and lack of multi-domain generalization.


## Future Work
- Extend evaluation to **temporal**, **numeric**, and **non-deterministic** planning domains.  
- Develop **equivalence-aware semantic metrics** for PDDL comparison.  
- Integrate human and LLM feedback loops for improved iterative translation.

# Contributing

Thank you for your help. This file tells you how to make a change to the written proof.

## What you can do

- Read a step and check it against the Lean code. Then change its status to `checked` in a pull request, and say what you checked.
- Report an error in the text. Open an issue and give the step, the sentence and the reason.
- Mark a step that you do not understand. Open an issue with the label `gap`.
- Propose a link to Math 2.0 for a concept.

## Make a change

1. Make a branch from `main`.
2. Change the files. Keep each paragraph on one line.
3. Open a pull request. Give it one `area/*` label and one `type/*` label. Refer to the milestone issue.

## Writing style

The text of the proof uses the normal language of mathematics. Keep the sentences short when you can.

All other text (README, issues, pull requests and commit messages) uses plain technical English, as in ASD-STE100:

- A descriptive sentence has at most 25 words. An instruction has at most 20 words.
- Use the active voice and the simple tenses.
- Do not use em dashes. Use a full stop, a comma or parentheses.
- Do not break a sentence over two lines. One paragraph is one line.

## Models

A model can draft a step. A draft has the status `drafted` and the field `drafted_by`. Only a person can change the status to `checked`.

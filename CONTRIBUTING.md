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

## The format of a step

A step is one file in `proof/steps/`. The name of the file is the id of the step, for example `rh-of-right.md`. The file starts with front matter:

```yaml
id: rh-of-right
title: The Riemann Hypothesis from the right half-plane
decl: Formalism.VW.rh_of_right
chapter: overview
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [NFXKNDJX9C, 0V3FZMVB4K, TXB2F07CC6, VCGF9YR36X]
routine: []
open: []
reviews: []
```

- `decl` is the Lean declaration that the step explains.
- `uses` gives the steps that the proof cites.
- `concepts` gives the tags of the Math 2.0 pages that a reader needs.
- `routine` gives the Lean dependencies that the proof treats as routine, for example a lemma of Mathlib.
- `open` gives the Lean dependencies that the proof cites but that have no step yet.
- `reviews` gives one record for each person who checked the step, with `by`, `date`, `status` and an optional `note`.

The body has the sections `## Statement` and `## Proof`. A definition has `## What it means` in place of `## Proof`. The section `## Notes` is optional. The site adds the Lean statement, the links and the status.

A chapter gives the reading order of its steps in the field `steps` of its front matter.

The command `rh check -content . -index <records>` checks each step with the rules C1 to C6 of spec 05. Each direct dependency of the declaration must be in a step of `uses`, in `routine`, in `open`, or in `links/literature.yaml`. The CI runs the check on each pull request.

## Writing style

The text of the proof uses the normal language of mathematics. Keep the sentences short when you can.

All other text (README, issues, pull requests and commit messages) uses plain technical English, as in ASD-STE100:

- A descriptive sentence has at most 25 words. An instruction has at most 20 words.
- Use the active voice and the simple tenses.
- Do not use em dashes. Use a full stop, a comma or parentheses.
- Do not break a sentence over two lines. One paragraph is one line.

## Models

A model can draft a step. A draft has the status `drafted` and the field `drafted_by`. Only a person can change the status to `checked`.

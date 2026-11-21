---
title: A written proof of the Lean proof of the Riemann Hypothesis
description: The Lean proof of the Riemann Hypothesis that Levent Alpöge released on 2026-11-20, in words for people, with learning paths and links to Math 2.0.
lead: On 2026-11-20 Levent Alpöge released a Lean proof of the Riemann Hypothesis. It has more than 175,000 files and no written proof. This site writes the proof in words, step by step, from the top theorem down, and links each step to its Lean code and to the mathematics that it needs.
eyebrow: Lean 4 · Mathlib · 2026-11-20
doors:
  - title: I know the mathematics
    path: proof/
    text: Start with the proof in one page. It shows the top of the chain and where the large part starts.
  - title: I referee the claim
    path: trust/
    text: Start with the trust report. It tells which checks ran and what they found.
  - title: I am a student
    path: learn/
    text: Start with the learning page. It names the concepts in the order that you need them, with links to Math 2.0.
  - title: I know Lean
    path: code/
    text: Start with the code page. It shows the layout of the source and the files at the top of the proof.
  - title: I am a program
    path: llms.txt
    text: Read llms.txt, the Markdown copy of each page and the JSON in api/.
---
## How to read this site

The text has four levels. Level L0 is the proof in one page. Level L1 is a chapter for each part of the argument. Level L2 is a step for each lemma that a mathematician would write down. Level L3 is one Lean declaration. Each page shows its level at the top, and the side panel shows the Lean names and the concepts that the page needs.

## Where to start

If you know analytic number theory, read [the proof in one page](/proof/) first. It proves the Riemann Hypothesis from one statement about Dirichlet L-functions, and you can check each step with pen and paper. Then follow the chapters in order. Each chapter page has the list of all chapters in its side panel, and a link to the next chapter at the bottom.

If you want to see the Lean code, open [the code page](/code/). It has the numbers of the release, the trunk of the proof and its largest branches. Each of the 1,061,531 declarations has a page with its statement, a plain reading of the statement, the file and line, and what it uses. The 769,260 declarations that the proof uses also show the chain from `riemannHypothesis` and their parts. So you can walk down the whole proof by links.

If you want to know if the claim holds, read [what is checked](/trust/). Lean accepts a proof only relative to its axioms and its statements, and that page tells which checks ran.

## What is here now

The work goes in milestones. The site has the overview, the chapters of the trunk as drafts, the timeline of the note, the map of the Lean code and the trust questions with a first scan of the source. The build of the full project and the axiom check come next. See [about](/about/) for the plan.

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

The work goes in milestones. Now the site has the overview, the timeline of the note and the trust questions. The map of the Lean code comes next. See [about](/about/) for the plan.

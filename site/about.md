---
title: About
description: Who makes this site, from what source, and how to help.
lead: This site is a project of Tam Nguyen Duc. It is not a work of the author of the Lean proof, and it does not speak for the author.
---
## The sources

- The Lean proof and the note `remark.pdf` of [Levent Alpöge](https://alpo.ge/), released on 2026-11-20.
- [tamnd/riemann-lean](https://github.com/tamnd/riemann-lean): the same source with no change, with the hashes and the citation.
- [Math 2.0](https://math2.tamnd.com): the pages for the concepts that the proof needs.

## How the site is made

The text is in [tamnd/riemann](https://github.com/tamnd/riemann). The tool `rh` in [tamnd/riemann-agent](https://github.com/tamnd/riemann-agent) builds the site and checks each link to the Lean code and to Math 2.0. The text is written by people, or drafted by a model and reviewed by a person. Each page shows its status.

## The plan

| Milestone | Goal | State |
|---|---|---|
| M0 | the source and the site | done, v0.1.0 |
| M1 | the map of the Lean proof | done, v0.2.0 |
| M2 | the trust report: build, axioms, second check | next |
| M3 | the top of the proof in words | in progress |
| M4 | learning paths and links to Math 2.0 | started |
| M5 | drafting at scale | not started |
| M6 | the chapters, reviewed | not started |

The issues of each milestone are in [tamnd/riemann-agent](https://github.com/tamnd/riemann-agent/milestones).

## How to help

Did you find an error? [Open an issue](https://github.com/tamnd/riemann/issues/new?template=error.yml). Do you know a part of the mathematics well? Read [CONTRIBUTING.md](https://github.com/tamnd/riemann/blob/main/CONTRIBUTING.md).

## How to cite

Cite the Lean proof as the work of Levent Alpöge. To cite this text, use [CITATION.cff](https://github.com/tamnd/riemann/blob/main/CITATION.cff).

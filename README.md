# riemann

A written proof, for people, of the Lean proof of the Riemann Hypothesis, with learning paths and links to [Math 2.0](https://math2.tamnd.com).

Read it at [riemann.tamnd.com](https://riemann.tamnd.com).

## What this is

On 2026-11-20, Levent Alpöge released a Lean 4 project that claims a proof of the Riemann Hypothesis, and a 4 page note. The note says that the Lean code is the only artifact and that a written proof does not exist yet. The release is about 175,000 files and about 17 million lines of Lean.

This repository makes the written proof from the Lean code, from the top down:

- **Level L0.** The overview: the argument on one page.
- **Level L1.** The chapters: one for each main idea, in the order of the proof.
- **Level L2.** The steps: one statement and one proof in words for each important Lean declaration.
- **Level L3.** The declarations: the Lean statement, its module and its uses.

Each step links to the Lean source in [riemann-lean](https://github.com/tamnd/riemann-lean) and to the concepts that it needs in Math 2.0. The learning paths tell a reader what to learn first for each chapter.

## Status

The claim is not checked yet. We did not build the project yet, and nobody checked the statements against the standard ones yet. The page [Trust](https://riemann.tamnd.com/trust/) shows what is checked and what is not.

| Milestone | Goal | Release |
|---|---|---|
| M0 | the source and the site | v0.1.0 |
| M1 | the map of the Lean proof | v0.2.0 |
| M2 | the trust report | v0.3.0 |
| M3 | the top of the proof in words | v0.4.0 |
| M4 | learning paths and links to Math 2.0 | v0.5.0 |
| M5 | drafting at scale | v0.6.0 |
| M6 | the chapters | v0.7.0 and later |

## Layout

| Path | Content |
|---|---|
| `manifests/source.yaml` | the pinned commit of riemann-lean and the hash of the release |
| `proof/` | the written proof: the overview, the chapters and the steps |
| `paths/` | the learning paths |
| `glossary/` | the names in the Lean code and what they mean |
| `links/` | the links to Math 2.0 and to the published literature |
| `records/` | the records that `rh` makes from the Lean source; do not edit them by hand |
| `site/` | the pages of the site that are not part of the proof |

The toolchain is [riemann-agent](https://github.com/tamnd/riemann-agent).

## Build the site

Build `rh` from riemann-agent, then build, check and serve the site:

```sh
rh site build -content . -out public
rh site check -dir public
rh site serve -dir public
```

The workflow `deploy` does the same on each push to `main` and once each day, and deploys `public/` to the Cloudflare Worker `riemann` with `wrangler.jsonc`. The Worker has no script. It serves the static files only.

## Help

Each step has a status: `drafted`, `checked` or `reviewed`. A model can draft a step, but only a person can change its status to `checked`. Read [CONTRIBUTING.md](CONTRIBUTING.md) to help.

## Licence

The text is under [CC BY 4.0](LICENSES/CC-BY-4.0.txt). The data (`manifests/`, `records/`, `links/`, `glossary/` and `paths/`) is under [CC0 1.0](LICENSES/CC0-1.0.txt). The Lean code that the text quotes stays with its author. See [riemann-lean](https://github.com/tamnd/riemann-lean/blob/main/NOTICE.md).

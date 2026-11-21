# Changelog

All changes that a reader can see are in this file. The versions follow the milestones: milestone Mn closes with `v0.(n+1).0`.

## Unreleased

### Changed

- The Learn section is now a book. Part I has 17 chapters on the background subjects, in the order to read them, with each definition and theorem that the proof uses. Part II has one short guide for each chapter of the proof. Pull request #20.
- A reader pass over the 28 pages of Learn. It cut about 11 percent of the words and fixed about 40 errors in statements, such as missing hypotheses, a wrong epsilon factor in Tate's thesis and a false form of arithmetic Hilbert-Samuel. Pull request #21.

## v0.6.1 (2026-11-21)

The first real results of the trust report, for milestone M2.

### Added

- `records/trust.json`. Q0 is yes: the workflow `source` of riemann-lean downloaded the release from alpo.ge again, and each part, the archive and each file matched. Q4 is open. Pull request #17.
- `reviews/fidelity.md`, the draft review of the five statements of `Main.lean` against the Mathlib definitions. It waits for a named reviewer. Pull request #17.

### Changed

- The trust page gives the result of the build trial in Q1, links the draft review in Q4, and adds the check of notation to the scan table. Pull request #17.

## v0.6.0 (2026-11-21)

This version follows milestones M4 and M5 of rh. It has the learning paths, the L2 steps and the chapters for each group of the timeline.

### Added

- The written steps of the trunk, in `proof/steps/`. There are 20 steps, from the statement of the Riemann Hypothesis down to the first named results. Each step has a statement, the Lean statement, a proof or a reading of the definition, the steps that it uses and its status. All steps are drafts by a model, and each one has the field `drafted_by`. A person must check each one.
- Each chapter gives the reading order of its steps in the field `steps`.
- `links/literature.yaml` lists the 18 named results of the trunk. For each one it gives what the Lean statement says, the published works, and how the Lean statement differs from them. Each DOI was checked.
- CONTRIBUTING.md tells the format of a step.
- The deploy workflow runs `rh check` before it builds the site.
- The 12 learning paths give a definition for each of their 156 concepts. The glossary has 207 names, and `links/math2.yaml` has the summaries of the Math 2.0 nodes that the paths use. Each concept with no node has a node proposal in tamnd/math2.
- 30 steps at level L2 that follow the main branch of each chapter. Their Notes record findings in the code, for example arguments that a theorem does not read.
- Five chapters of the proof, level L1, as drafts: the Weil bound and arithmetic positivity, Bessel periods and seesaw, Siegel-Weil and the metaplectic representation, CM curves and divisibility, and block determinants and theta Parseval. With them, each group of the timeline of the note has a chapter. The Notes of each chapter say which ideas of the note have no counterpart in the code.
- Each step of the timeline links to its chapter, and the parent chapters link to the new chapters.

### Changed

- The site uses the records of the release `records-9110120-r2`, made by rh v0.6.1. That version does not resolve local names as uses. The spine has 757,483 declarations (it had 769,260), and the sizes in all chapters now come from these records.
- The theta chapter tells that `ZeroFreeAll` has no exception at s = 1, and that the case s = 1 is true only because of the value that Mathlib gives to ζ(1).

### Fixed

- The YAML of the workflow `index`. It failed on each push, and it could not run by hand.

## v0.2.1 (2026-11-21)

### Added

- Six chapters of the proof, level L1, as drafts: the map of the trunk (`proof/01-trunk.md`), the Galois row, the window bound VWin, the literature layer, theta integrals and local matching, and the unitary hypotheses node. Each chapter is written from the Lean source. It quotes the Lean statements, says them in standard notation, and lists in its notes each definition that it does not unfold yet.
- The trust page explains each question and has the results of a text scan of the source: no `axiom` declarations, no `sorry`, no options that turn off kernel checks, and the list of the meta code with what each part does.

### Changed

- The learning page is a path in three stages. Each concept tells where the proof uses it.
- The main page tells where to start, and the about page shows the state of each milestone.

## v0.2.0 (2026-11-21)

Milestone M1, the map.

### Added

- The code pages: the numbers of the release, the trunk, the large branches, a page for each declaration and each module, and the search of Lean names.
- `records/` has the summaries of `rh index` and `rh spine`. `manifests/records.yaml` names the full records, which are the release `records-9110120`. `scripts/fetch-records.sh` downloads and checks them, and the two deploy methods use it.
- The workflow `index` makes the records again when the source changes.

## v0.1.0 (2026-11-21)

Milestone M0, the source and the site.

### Added

- The first pages of the site: the main page, the proof in one page (`proof/00-overview.md`), the timeline of the note, and the pages Learn, Code, Trust and About.
- `manifests/source.yaml` pins riemann-lean at commit 9110120.
- The workflow `deploy` builds the site with `rh site build`, checks it, and deploys it to the Cloudflare Worker `riemann` at https://riemann.tamnd.com. A pull request builds and checks the site but does not deploy it. `wrangler.jsonc` is the configuration of the Worker.
- `scripts/deploy-cloudflare.sh` is the second deploy method. A cron job on the build server runs it every 5 minutes, and it deploys when `main` of riemann or riemann-agent changes.
- The README, the licences and the citation.

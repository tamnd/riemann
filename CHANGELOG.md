# Changelog

All changes that a reader can see are in this file. The versions follow the milestones: milestone Mn closes with `v0.(n+1).0`.

## Unreleased

### Added

- The written steps of the trunk, in `proof/steps/`. There are 20 steps, from the statement of the Riemann Hypothesis down to the first named results. Each step has a statement, the Lean statement, a proof or a reading of the definition, the steps that it uses and its status. All steps are drafts by a model, and each one has the field `drafted_by`. A person must check each one.
- Each chapter gives the reading order of its steps in the field `steps`.
- `links/literature.yaml` lists the 18 named results of the trunk. For each one it gives what the Lean statement says, the published works, and how the Lean statement differs from them. Each DOI was checked.
- CONTRIBUTING.md tells the format of a step.
- The deploy workflow runs `rh check` before it builds the site.

### Changed

- The theta chapter tells that `ZeroFreeAll` has no exception at s = 1, and that the case s = 1 is true only because of the value that Mathlib gives to ζ(1).

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

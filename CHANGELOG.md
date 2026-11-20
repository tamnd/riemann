# Changelog

All changes that a reader can see are in this file. The versions follow the milestones: milestone Mn closes with `v0.(n+1).0`.

## Unreleased

### Added

- The first pages of the site: the main page, the proof in one page (`proof/00-overview.md`), the timeline of the note, and the pages Learn, Code, Trust and About.
- `manifests/source.yaml` pins riemann-lean at commit 9110120.
- The workflow `deploy` builds the site with `rh site build`, checks it, and deploys it to the Cloudflare Worker `riemann` at https://riemann.tamnd.com. A pull request builds and checks the site but does not deploy it. `wrangler.jsonc` is the configuration of the Worker.
- `scripts/deploy-cloudflare.sh` is the second deploy method. A cron job on the build server runs it every 5 minutes, and it deploys when `main` of riemann or riemann-agent changes.
- The README, the licences and the citation.

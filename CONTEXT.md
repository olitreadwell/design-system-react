# cfpb/design-system-react context
> refreshed 2026-09-09 | upstream default: main @ c52fe15873ae3c6e0f3c9d43ed0e36ecb1041eb9

## Identity & policies
- upstream: cfpb/design-system-react, default branch `main`, primary language TypeScript, English-first (US English; README/CONTRIBUTING/docs all US spelling).
- CLA/DCO: none (CONTRIBUTING.md releases contributions under CC0 public domain dedication; no CLA/DCO bot).
- AI-assisted PR policy: unstated (no AI disclosure requirement found in CONTRIBUTING or templates).
- signed commits required: no.
- PR template: `.github/PULL_REQUEST_TEMPLATE.md` (Short description / Changes / How to test / Screenshots / Notes) — fill verbatim.
- external tracker: GitHub issues.

## Conventions (verified from merged PRs)
- branch naming: `fix/...`, `chore/...`, `rad-...` (dominant patterns from merged upstream PR headRefNames).
- commit style: mixed; recent human commits use plain imperative or `fix(scope): ...`. Use plain imperative for trivial cleanup.
- test command: `yarn test:ci` (vitest run); lint: `yarn lint`; build: `yarn build`. CI: `.github/workflows/test.yml` (Node 26, Yarn 4).
- how outside PRs get merged: responsive; external contributors (arpitjain099, olitreadwell) have merged PRs recently. Primary maintainer: flacoman91 (Richard Dinh).

## Maintainer picture
- active maintainers: flacoman91 (Richard Dinh, primary), virginiacc (Virginia Czosek), arpitjain099 (Arpit Jain).
- response latency: fast (external PRs merged within days).

## Issue-area health
- Not deeply mined for this trivial-fix pass; repo is active with recent merges.

## Gap ledger (dedupe — READ FIRST, never re-pick)
- `2026-08-05` self-found gap (Introduction.mdx `it's`->`its` + 3 dead links in CODE_OF_CONDUCT.md) — outcome pr-opened-substantive (fork PR #1, CLOSED unmerged) — lesson: those fixes are already proposed; do NOT re-pick. New occurrences of the same typo in OTHER files are fair game.
- `2026-08-24` issue #620 footer back-to-top — outcome pr-opened (fork PR #5, later promoted upstream and merged) — lesson: footer fix already upstream.

## Mined gaps (discovered, not yet attempted)
- `2026-09-09` footer.scss comments: `overriden` -> `overridden` (3 occurrences) — status: attempted (this run).
- `2026-09-09` use-pagination.test.tsx: test description "Returns returns" -> "Returns" — status: attempted (this run).
- `2026-09-09` select-utilities.tsx comments: `it's` -> `its` and `an SelectOption` -> `a SelectOption` — status: attempted (this run).
- `2026-09-09` text-area.tsx JSDoc: stale anchor `#text-area-input-1` -> `#text-area-input` (verified page has `id="text-area-input"`) — status: attempted (this run).

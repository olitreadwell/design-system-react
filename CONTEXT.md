# cfpb/design-system-react context
> refreshed 2026-10-04 | upstream default: main @ 46fd4a43fd5a185fdc956a636e84249d0b96cdb0 (unchanged since 2026-10-01)

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
- Issue pass 2026-10-04: re-listed the 13 open upstream issues + 11 open PRs. No maintainer-engaged issue survived the filters: #648 (`[TextInput] inputRef prop is ignored`) is already claimed by open upstream PR #649 (`fix/textinput-inputref`, soroush5); the rest are stale, design, or verification threads (e.g. #435 is a "verify Select" task). Proceeded with the repo-audit self-found path.
- Selects area: the only open PR touching it is #357 (hover/focus styling); nothing addresses the effect below.
- repo is active with recent merges; primary maintainer responsive.

## Gap ledger (dedupe — READ FIRST, never re-pick)
- `2026-08-05` self-found gap (Introduction.mdx `it's`->`its` + 3 dead links in CODE_OF_CONDUCT.md) — outcome pr-opened-substantive (fork PR #1, CLOSED unmerged) — lesson: those fixes are already proposed; do NOT re-pick. New occurrences of the same typo in OTHER files are fair game.
- `2026-08-24` issue #620 footer back-to-top — outcome pr-opened (fork PR #5, later promoted upstream and merged) — lesson: footer fix already upstream.

- `2026-09-24` self-found trivial cleanup pass (README tests-file link label `buttons.test.tsx`->`button.test.tsx`; checkbox.test.tsx `Accessbility`->`Accessibility`; icon.tsx JSDoc `it's parent`->`its parent`; width-percent.ts dead utilities link) — outcome pr-opened (fork PR #11) — lesson: 4 genuine fixes across 4 files; fork CI React+deploy-preview green, Visual-Regression red = missing CHROMATIC_PROJECT_TOKEN (fork artifact).
- `2026-09-25` self-found a11y gap (ResponsiveMenu close overlay `role="button"` ignored Enter/Space) — outcome pr-opened (fork PR #12) — lesson: WAI-ARIA button activation pattern; two tests fail-then-pass; fork CI React+deploy-preview ok, Visual-Regression red = missing CHROMATIC_PROJECT_TOKEN (fork artifact).
- `2026-09-30` self-found trivial cleanup pass (tsconfig.json stale `paths` case `CfpbExpandables.d.ts`->`cfpb-expandables.d.ts`; _shared.scss dead DS link -> current `cfpb-design-system/.../cfpb-layout/layout.scss`; summary.tsx JSDoc "components hides"->"hide"; select-tag.tsx comment "a later"->"later"; README "Github actions"->"GitHub Actions"; checkbox.tsx JSDoc "javascript"->"JavaScript"; scripts/lint.sh stale `.eslintignore`/`.stylelintignore` comments -> `eslint.config.js`/`stylelint.config.js`) — outcome pr-opened (fork PR #13) — lesson: 7 genuine fixes / 7 files; upstream head unchanged @46fd4a43f; fork CI React+deploy-preview green, Visual-Regression red = missing CHROMATIC_PROJECT_TOKEN (fork artifact). Do NOT re-pick these exact lines.
- `2026-10-01` self-found trivial cleanup pass (7 dead DS doc anchors: divider.stories.tsx `#content-dividers`->`#types`; table.stories.tsx `#width-utilities-helper-classes`->`#helper-classes`; layout-main.stories.tsx `#left-hand-sidebar-layout`/`#right-hand-sidebar-layout`->`#main-content-and-sidebar`; layout-content.stories.tsx + layout-sidebar.stories.tsx `#flush-*-modifier*`->`#modifiers`; plus expandable.test.tsx `Rememberance`->`Remembrance`) — outcome pr-opened (fork PR #14) — lesson: 6 genuine fixes / 6 files; upstream head unchanged @46fd4a43f; DS development-page variation anchors are collapsed `#details-...` ids on hidden `m-tabs u-hidden` panels (they exist but cannot scroll), so cross-links must target the visible `o-variation-group` section anchors the page's own contents nav uses. Do NOT re-pick these exact lines.
- `2026-10-03` self-found trivial cleanup pass (expandable.stories.tsx dead Storybook story links `components-expandable--default` / `components-expandablegroup--{accordion,default}` -> real ids `components-verified-expandables--default` / `--accordion` / `--default-expandable-group`; README `../Link/link`->`../link/link`; select-multi.tsx `Indicies`->`Indices`; build-and-deploy.yml stale "built using npm / 'build' folder" template comment removed) — outcome pr-opened (fork PR #15) — lesson: 4 genuine fixes / 4 files; upstream head unchanged @46fd4a43f; fork CI pending at log time; do NOT re-pick these exact lines.
- `2026-10-04` self-found bug (clean-code/correctness): `SelectMulti`'s parent-notification effect listed `options` and `onChange` as dependencies, so a controlled parent passing an inline `options` array or `onChange` callback (the usual React idiom) re-ran the effect on every render; the parent re-rendered on every notification, giving an infinite render loop ending in "Maximum update depth exceeded". Repro: mount `Select isMulti` with `options={MultipleSelectOptions.map((o) => ({ ...o }))}` and an `onChange` that stores the reported selection in state -> onChange fires until the loop throws. Dedupe: searched upstream issues + PRs for select/multiselect/onChange/render loop/useEffect - no existing report. FIX: read the latest `options`/`onChange` through refs and depend only on `selectedIndicies` (src/components/select/select-multi.tsx) + a regression test (src/components/select/select.test.tsx) that fails on `main` (`onChange called too many times`) and passes after. Diff 2 files, +52/-3. -- outcome pr-opened (fork PR #16) -- lesson: substantive bug-fix (not a trivial/doc pass); upstream head unchanged @46fd4a43f; fork CI React+deploy-preview green, Visual-Regression red = missing CHROMATIC_PROJECT_TOKEN (fork artifact). Do NOT re-pick this exact line.
## Mined gaps (discovered, not yet attempted)
- `2026-09-09` footer.scss comments: `overriden` -> `overridden` (3 occurrences) — status: attempted (pr-opened #7).
- `2026-09-09` use-pagination.test.tsx: test description "Returns returns" -> "Returns" — status: attempted (pr-opened #7).
- `2026-09-09` select-utilities.tsx comments: `it's` -> `its` and `an SelectOption` -> `a SelectOption` — status: attempted (pr-opened #7).
- `2026-09-09` text-area.tsx JSDoc: stale anchor `#text-area-input-1` -> `#text-area-input` (verified page has `id="text-area-input"`) — status: attempted (pr-opened #7).
- `2026-09-09` trivial cleanup pass (footer.scss overriden, use-pagination Returns returns, select-utilities it's/an, text-area stale anchor) — outcome pr-opened (fork PR #7) — lesson: 5 genuine fixes across 4 files; fork CI React+deploy-preview green, Visual-Regression red = missing CHROMATIC_PROJECT_TOKEN (fork artifact).

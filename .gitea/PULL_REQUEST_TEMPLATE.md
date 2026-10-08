## What and why

<!-- One or two sentences. Link the issue: Closes #N -->

## How it was tested

<!-- Commands run, scenarios added, anything checked by hand -->

## Checklist (engineering-standards)

- [ ] Unit tests added or updated; coverage is 100 % lines and branches (section 1)
- [ ] Lint, format, type checks and secrets scan pass: `pre-commit run --all-files` (section 2)
- [ ] Infrastructure changes are code only; plan or diff attached (section 3)
- [ ] Metrics, logs and alarms added for new behaviour; alarms link to runbooks (section 4)
- [ ] Production quality: config via environment, timeouts, least privilege, pinned dependencies (section 5)
- [ ] Contracts updated first; generated code regenerated and committed (section 6)
- [ ] Gherkin scenarios added or updated, tagged `@issue-N`, each with a test (or `@manual` + runbook) (section 7)
- [ ] Nothing intentionally broken; CI is green (section 8)
- [ ] README, SPEC, runbooks updated where needed; decision record written or proposed (sections 9 and 12)
- [ ] Branch, commits and issue links follow the workflow (section 13)

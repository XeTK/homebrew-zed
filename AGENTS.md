# Rules for agents working in this repository

This repository follows [engineering-standards](https://gitea.xetk.co.uk/xetk/engineering-standards)
**v1**. Read `STANDARDS.md` there first. It is the definition of done.

1. Work only from an issue. Branch `<type>/<issue>-<short-name>`; Conventional
   Commits referencing the issue.
2. Open pull requests; never push to `main`. A human reviews, approves and merges.
3. Agents **propose** decisions (status `proposed`, or a decision request).
   Only the named decider sets `accepted`, or tells you to.
4. Never commit secrets. Reference them by name; values live in the secret store.
5. Never bypass hooks (`--no-verify`) and never commit code you know is broken.
6. No click-ops. If you need a manual change, stop and raise it in the issue.
7. Every behaviour change comes with unit tests (100 % line and branch
   coverage), Gherkin scenarios with tests, metrics/logs/alarms, and
   docs/runbooks.
8. Cross-reference issues in other repos with full URLs, not `#N`.
9. Run the checks before you push: `pre-commit run --all-files`.
10. **Communicate as in `COMMUNICATION.md`:** lead with the point, keep it
    short and structured. For decisions: recommendation first, at most 3
    lettered options, one question each, marked *blocking* or *can wait*, at
    most 3 at once.

Repo-specific notes go below this line.

## About this repository

A Homebrew tap (about 40 lines of Ruby plus one workflow). Keep the layout
Homebrew expects: `Casks/` (and `Formula/` if ever added) and `README.md` at
the root.

- **Deployed from here:** the cask is consumed by `brew tap xetk/zed`. A
  workflow (`.gitea/workflows/mirror-to-github.yml`) force-pushes `main` to
  the GitHub mirror on every push to `main`. Gitea is the source of truth.
- **Checks:** there is no pre-commit or CI check yet (see
  `docs/decisions/0002-no-local-checks-or-ci.md`). Until then run
  `brew style Casks/zed-fork.rb` and `gitleaks detect` before opening a pull
  request.
- **Secrets:** none are committed. The mirror uses the Actions secret
  `MIRROR_DEPLOY_KEY` (a deploy key scoped to the one GitHub repo). Never
  print or commit its value.
- **Do not add files inside `Casks/` or `Formula/`** other than casks and
  formulae.

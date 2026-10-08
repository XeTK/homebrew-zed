---
id: "0002"
title: Defer pre-commit, Nix dev shell and CI checks
status: proposed
date: 2026-10-08
deciders: [owner]
consulted: []
supersedes: []
superseded_by: null
tags: [ci, nix, lint, deviation]
links: ["https://gitea.xetk.co.uk/xetk/homebrew-zed/issues/6"]
---

# Defer pre-commit, Nix dev shell and CI checks

## Context

The repo has no `.pre-commit-config.yaml`, no `flake.nix`/`flake.lock`/`.envrc`,
and its only workflow is the GitHub mirror. Nothing runs `brew style`,
`gitleaks` or a lint on pull requests (sections 2, 8, 10, 11). There are no
unit tests or Gherkin scenarios (sections 1, 7); the only code is one cask with
no logic to unit test, so a `brew style`/`brew audit` check is the realistic
substitute. Homebrew itself comes from the host, not a dev shell.

## Decision

Accept the deviation until 2027-03-31. By then: add a flake dev shell with
`gitleaks` and `yamllint`, a pre-commit config, and a `nixos`-runner pull
request workflow running them plus `brew style` where a Mac runner exists.

## Consequences

Pull requests are checked by hand until then. Removal date: 2027-03-31.

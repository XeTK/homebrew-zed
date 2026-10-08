---
id: "0001"
title: Adopt engineering-standards v1
status: accepted
date: 2026-10-08
deciders: [owner]
consulted: []
supersedes: []
superseded_by: null
tags: [standards, adoption]
links: ["https://gitea.xetk.co.uk/xetk/homebrew-zed/issues/6"]
---

# Adopt engineering-standards v1

## Context

The owner instructed on 2026-10-08 that this repo follow
[engineering-standards](https://gitea.xetk.co.uk/xetk/engineering-standards)
v1. It is a small Homebrew tap, not code with a service behind it, so many
sections apply only in part.

## Decision

Follow engineering-standards v1 with the profiles `stack-defaults` and
`homelab`. Gaps found at adoption are recorded as proposed decisions, each with
a reason and a removal date, rather than fixed in the adoption pull request.

## Consequences

Agents follow `AGENTS.md`. Deviations live in this folder until fixed or
accepted by a maintainer.

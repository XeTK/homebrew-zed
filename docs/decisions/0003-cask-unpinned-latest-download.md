---
id: "0003"
title: Cask installs an unpinned latest build
status: proposed
date: 2026-10-08
deciders: [owner]
consulted: []
supersedes: []
superseded_by: null
tags: [dependencies, deviation]
links: ["https://gitea.xetk.co.uk/xetk/homebrew-zed/issues/6"]
---

# Cask installs an unpinned latest build

## Context

`Casks/zed-fork.rb` uses `version :latest` and `sha256 :no_check`, and the URL
is an alias that always points to the newest nightly DMG. Section 5 expects
pinned dependencies. This is deliberate: the app updates itself from a signed
feed at `zed.xetk.co.uk`, and the build is ad-hoc signed and not notarized.

## Decision

Accept the deviation until 2027-06-30, when pinning a version and checksum per
release (published by the `xetk/zed` build) will be reconsidered.

## Consequences

Installs are not reproducible and the download is not checksum-verified.
Removal date: 2027-06-30.

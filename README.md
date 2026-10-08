# homebrew-zed

Homebrew tap for the Zed fork built from `xetk/zed`.

```sh
brew tap xetk/zed
brew install --cask zed-fork
```

The cask `Casks/zed-fork.rb` installs the "Zed xetk Nightly" build served from
`zed.xetk.co.uk`. Gitea is the source of truth; a workflow mirrors `main` to
GitHub so the tap resolves without a URL.

## Standards

Follows [engineering-standards](https://gitea.xetk.co.uk/xetk/engineering-standards) **v1**, profiles: stack-defaults, homelab.

Deviations are recorded in [`docs/decisions/`](docs/decisions/).

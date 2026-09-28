cask "zed-fork" do
  version :latest
  sha256 :no_check

  # This Gitea instance requires sign-in even for public-repo release
  # downloads, so a plain `url` can't fetch it. Read the token tea already
  # has stored locally rather than hardcoding a secret into this tap.
  gitea_token = File.read(File.expand_path("~/Library/Application Support/tea/config.yml"))[/token:\s*(\S+)/, 1]

  url "https://gitea.xetk.co.uk/xetk/zed/releases/download/nightly/Zed-Dev.dmg",
      using:  :curl,
      header: "Authorization: token #{gitea_token}"
  name "Zed Dev"
  desc "Personal fork of Zed (window accent colors, unsent-draft flags, and more), built from xetk/zed main"
  homepage "https://gitea.xetk.co.uk/xetk/zed"

  auto_updates false
  depends_on macos: :sonoma

  app "Zed Dev.app"

  # Unsigned/unnotarized (ad-hoc signed only), and rebuilt in place on every
  # push to main - `brew reinstall --cask zed-fork` picks up the latest build,
  # since `version :latest` + `sha256 :no_check` means `brew upgrade` won't
  # detect a change on its own. No quarantine-stripping step: curl downloads
  # (unlike browser downloads) don't set com.apple.quarantine in the first
  # place, so there's nothing to strip.

  # No `zap` block: this build intentionally shares its settings, database,
  # and history with a regular Zed install (~/Library/Application
  # Support/Zed, ~/.config/zed) rather than using an isolated profile, so
  # uninstalling the fork must not touch that shared data.
end

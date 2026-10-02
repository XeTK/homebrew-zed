cask "zed-fork" do
  version :latest
  sha256 :no_check

  # The nightly channel of the fork, served from zed.xetk.co.uk. The alias
  # always points at the newest build, and the host is public, so no token.
  url "https://zed.xetk.co.uk/nightly/Zed-xetk-nightly-aarch64.dmg"
  name "Zed xetk Nightly"
  desc "Personal fork of Zed (window accent colors, unsent-draft flags, message timestamps, and more), built from xetk/zed main"
  homepage "https://gitea.xetk.co.uk/xetk/zed"

  # The app checks the signed feed at zed.xetk.co.uk itself, so Homebrew does
  # not need to upgrade it. `brew reinstall --cask zed-fork` still fetches the
  # latest build.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Zed xetk Nightly.app"

  # Ad-hoc signed, not notarized. curl downloads don't set
  # com.apple.quarantine, so there is nothing to strip.

  # No `zap` block: this build shares its settings, database, and history with
  # a regular Zed install, so uninstalling must not touch that shared data.
end

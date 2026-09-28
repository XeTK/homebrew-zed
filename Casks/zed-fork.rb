cask "zed-fork" do
  version :latest
  sha256 :no_check

  url "https://gitea.xetk.co.uk/xetk/zed/releases/download/nightly/Zed-Dev.dmg"
  name "Zed Dev"
  desc "Personal fork of Zed (window accent colors, unsent-draft flags, and more), built from xetk/zed main"
  homepage "https://gitea.xetk.co.uk/xetk/zed"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "Zed Dev.app"

  # Unsigned/unnotarized (ad-hoc signed only), and rebuilt in place on every
  # push to main - `brew reinstall --cask zed-fork` picks up the latest build,
  # since `version :latest` + `sha256 :no_check` means `brew upgrade` won't
  # detect a change on its own.
  postflight do
    system_command "/usr/bin/xattr",
                    args: ["-cr", "#{appdir}/Zed Dev.app"],
                    sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Zed Dev",
    "~/Library/Caches/dev.zed.Zed-Dev",
    "~/Library/Preferences/dev.zed.Zed-Dev.plist",
    "~/Library/Saved Application State/dev.zed.Zed-Dev.savedState",
  ]
end

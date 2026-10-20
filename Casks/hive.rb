cask "hive" do
  # Apple Silicon only — the desktop app ships an aarch64 DMG (no Intel build).
  version "1.15.0"
  sha256 "7a063a9d4e9ff6724c6871a6d4b497533ce37565ff0a0515baf950d9ebfc3f56"

  url "https://github.com/honeyhive-ai/hive/releases/download/v#{version}/Hive_#{version}_aarch64.dmg",
      verified: "github.com/honeyhive-ai/hive/"
  name "Hive"
  desc "Shared LLM workspace for developers — bring your own runtime"
  homepage "https://github.com/honeyhive-ai/hive"

  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hive.app"

  # Remove user data on `brew uninstall --zap hive`.
  zap trash: [
    "~/Library/Application Support/com.hive.desktop",
    "~/Library/Caches/com.hive.desktop",
    "~/Library/Preferences/com.hive.desktop.plist",
    "~/Library/Saved Application State/com.hive.desktop.savedState",
  ]
end

cask "hive" do
  # Apple Silicon only — the desktop app ships an aarch64 DMG (no Intel build).
  version "1.5.9"
  sha256 "1a212f542cc1612321c1db13959b7da73e5ea9794760f9abd6a81d5abf1cbdaf"

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

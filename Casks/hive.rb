cask "hive" do
  # Apple Silicon only — the desktop app ships an aarch64 DMG (no Intel build).
  version "1.10.1"
  sha256 "b464c62595365fcf58b6f2be7f5404967cf17a355b58e83626d47a38ed0a98e9"

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

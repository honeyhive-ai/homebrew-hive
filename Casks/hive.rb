cask "hive" do
  # Apple Silicon only — the desktop app ships an aarch64 DMG (no Intel build).
  version "1.10.4"
  sha256 "7ec258ed190579a9d3864b03f590c9c5b08048592cf17926a5106e14e3f808e7"

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

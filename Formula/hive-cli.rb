class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.1/hive-aarch64-apple-darwin"
      sha256 "195d2bbc60411dcdc2fa1780e1ce8429a90e05cd3d6873242dd1e06886e4b080"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.1/hive-x86_64-apple-darwin"
      sha256 "2a660600586294a6c7b2dfb7b161462c93b1ec8ed9fdc0c7298bc2889ec3d1c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.1/hive-aarch64-unknown-linux-musl"
      sha256 "842816ce100aba5dab252ce6d172485005921ca0033edf39766cccee4648193c"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.1/hive-x86_64-unknown-linux-musl"
      sha256 "c979974ea51ac4b6936963bfa5f83e7e41808a9355085c857a9a3521b2cdd6f0"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

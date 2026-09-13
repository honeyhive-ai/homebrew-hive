class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.3/hive-aarch64-apple-darwin"
      sha256 "bef3749a3006acf9ab341ae9bd9a220b08626f605836d1ceec7ba3182c76c78f"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.3/hive-x86_64-apple-darwin"
      sha256 "2b32c8ad1b1ae8cc5833e311cce771f8a74fb789166d65233fa331e268535e2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.3/hive-aarch64-unknown-linux-musl"
      sha256 "445ba036adc9b0c500f15ec049d0e02bb2f6c02308ebb3e5fe87c2739eaa6adc"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.3/hive-x86_64-unknown-linux-musl"
      sha256 "293dc4d027c22d9c28c0e14cc7fe0de3cedfbc5e67e67bc2f234164ebce6d8a7"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

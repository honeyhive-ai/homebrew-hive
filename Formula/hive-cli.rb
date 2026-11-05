class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.17.0/hive-aarch64-apple-darwin"
      sha256 "92449f1fa978e076e161d8bb5ac13f1d8b0d8a780a0ef5acb0915d6da48e6eb5"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.17.0/hive-x86_64-apple-darwin"
      sha256 "5bd10760a35a1fddbea376b08221f24528ebb7060a436e85772c85fd59423336"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.17.0/hive-aarch64-unknown-linux-musl"
      sha256 "7544b1982800d62962889d0be29f0e403429aae47f4afba3ff41cf1c140f55d5"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.17.0/hive-x86_64-unknown-linux-musl"
      sha256 "5dbca5a584b059c5c06d5bc55b32f973d6b5d9873856314a54adf4d6f020c0c2"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

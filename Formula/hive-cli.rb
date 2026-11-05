class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.1/hive-aarch64-apple-darwin"
      sha256 "6ce539a311e31455c025b0ca7da937f356e70f9e5bf7a05290ac6bfc8cc070c3"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.1/hive-x86_64-apple-darwin"
      sha256 "bf90c73a772fead4f587e2a766ad642806a0c1ff64d8a219288e29f00aaa81f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.1/hive-aarch64-unknown-linux-musl"
      sha256 "89c2a32cac551738d86d81d4d442f0114c44371289bc66b90210b734488db015"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.1/hive-x86_64-unknown-linux-musl"
      sha256 "59a61d196ee9e3d21231569b3e18db6366697ae0a3629c1d9b1dd0e96895aef5"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.2/hive-aarch64-apple-darwin"
      sha256 "35946b2af22cdd6ac8cf828dd4dbd78f467259021b981e094ad4ceff6e4ad691"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.2/hive-x86_64-apple-darwin"
      sha256 "47a277cfd22cce4bf29638a0f087bcf5d6b3b722745ac02a17e82dca344506a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.2/hive-aarch64-unknown-linux-musl"
      sha256 "d1af594c517c6298d4afd4ca7f6e792bac325123557b07c0980449baf25638d4"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.2/hive-x86_64-unknown-linux-musl"
      sha256 "f6ddc96434402c04259b4b27c23db78f2019e8574f9bbc20dd5caaecf3c8da08"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

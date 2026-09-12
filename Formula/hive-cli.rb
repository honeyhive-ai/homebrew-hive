class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.9.0/hive-aarch64-apple-darwin"
      sha256 "b62a92cfc974d4c83c3ab03a4693e97992c8a033f065cd311147121cc475aaf2"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.9.0/hive-x86_64-apple-darwin"
      sha256 "feeeb81e4c663bb629d7c2ed769229e90eeaed0bc22342a111ae58f29f45b85e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.9.0/hive-aarch64-unknown-linux-musl"
      sha256 "5e6a4a0bb616dba2592888de45b4813a7d9f734037d52c071dcbca6340359265"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.9.0/hive-x86_64-unknown-linux-musl"
      sha256 "8d70164db79a69f192e49f3471d487e4b9370f347da0a47a239323db049b2989"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

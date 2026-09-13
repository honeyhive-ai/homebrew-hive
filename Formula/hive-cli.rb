class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.0/hive-aarch64-apple-darwin"
      sha256 "799bec3d71fe0c4dffcf11b08d9f4194b05988de3c7d8279275b0e2e970e7497"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.0/hive-x86_64-apple-darwin"
      sha256 "e17838b7063393912450dbd6a43b4fa9c92fdb55ddde460dc37ad1711fe19212"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.0/hive-aarch64-unknown-linux-musl"
      sha256 "cbbbed3687ba1aecc751528ab3b5a20937b5ff8f630e4604a87f75c38043101e"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.0/hive-x86_64-unknown-linux-musl"
      sha256 "d452757d32718a9ac841ae2ee06a1f7bfb81f0649a1d481665b20c1f35aa5377"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.1/hive-aarch64-apple-darwin"
      sha256 "c5cf9fe56f7914e6cf1fe58f2d076218c61a608e855824ce81f39380e518f7f3"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.1/hive-x86_64-apple-darwin"
      sha256 "bf20faf6499f6666d4ff080bd15f7d440f373d5d9baea539a05565e9c53667ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.1/hive-aarch64-unknown-linux-musl"
      sha256 "9f9c1b46188daa15f833f07f60eebbb55b6cf03038660f4fe6e0849ecd44c63f"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.1/hive-x86_64-unknown-linux-musl"
      sha256 "b9ccb3b63f42e222efed39db6c9c3acfb77325be3c7cbc10909a146145f4db0c"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

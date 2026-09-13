class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.4/hive-aarch64-apple-darwin"
      sha256 "b8b17cec7fac21fd205224c995044024e6604ddd2493e00059bd8665e1a99103"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.4/hive-x86_64-apple-darwin"
      sha256 "4eb8c40a4be879885581160ded8ef34dbd89fc5344e6c84a26280f8c34bfcc96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.4/hive-aarch64-unknown-linux-musl"
      sha256 "ba5eb64c66ae63a97ef9e555427e8712e3a526a819252a7666f526ce6c44b155"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.4/hive-x86_64-unknown-linux-musl"
      sha256 "62ae30b51e26d6d80817fc3022d5eb38e6c7c292e5e688324d9e735b430c2937"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

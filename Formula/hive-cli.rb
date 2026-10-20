class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.1/hive-aarch64-apple-darwin"
      sha256 "82152310dd79ba41834af260134aa6643dfd77ec8a8b6ae7d643f8c598d89dab"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.1/hive-x86_64-apple-darwin"
      sha256 "8720e29b7202f08a79e2efbbe528212603ea228abccc7018f0f197b5d1154793"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.1/hive-aarch64-unknown-linux-musl"
      sha256 "389e8d5aec01326ff5ee5e1376921d015d89772933d5034c8b91bc37a7609338"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.1/hive-x86_64-unknown-linux-musl"
      sha256 "70d74bf2207869afb0f092881b416c0766f6a1f21f96cf61f06295e7101946bd"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

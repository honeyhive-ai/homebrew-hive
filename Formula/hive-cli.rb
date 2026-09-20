class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.0/hive-aarch64-apple-darwin"
      sha256 "f8364fda6f0fe1fff018d423cfc8437886d164e6a9b1c7ffe8179baf5bf87a33"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.0/hive-x86_64-apple-darwin"
      sha256 "d34bdf847b405a5959f887663181ddedd5558494db1ea394756f8c9137d89575"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.0/hive-aarch64-unknown-linux-musl"
      sha256 "c787ac2bcb8f95b70e025368e819a8e67b44e75a8bd4608de60c8214abfe663c"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.14.0/hive-x86_64-unknown-linux-musl"
      sha256 "fdd5ad167da2fe77e36cb3ba6e583901011b0566c98ef5c4e23320eb8355d55d"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

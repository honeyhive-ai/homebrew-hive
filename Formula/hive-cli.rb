class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.0/hive-aarch64-apple-darwin"
      sha256 "68302c22724c9bcf5937fc32491946beadc9d3b021e3041b355564d239cd9aa4"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.0/hive-x86_64-apple-darwin"
      sha256 "b5db77fccd0356ae3c956e30b35875d8a6b89fad3ccc266503f4992a5df4dac4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.0/hive-aarch64-unknown-linux-musl"
      sha256 "e01f6299b96bc01c64ec697e9543d5863df4cd79256e81751e0be2f5f8ce94a2"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.16.0/hive-x86_64-unknown-linux-musl"
      sha256 "ea1fe669ace4c162fff81d0c2b8237497f3b58c77bdb629a5eac635ba2ea201f"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

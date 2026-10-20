class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.1/hive-aarch64-apple-darwin"
      sha256 "77770844d90687416b691fda8ebe5517d71f291b8e91259c35cc7272d380a807"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.1/hive-x86_64-apple-darwin"
      sha256 "9c86bbff8d31a8b1c4566b65cc82207a1d02afb3c50c2dcd832b87c22a51b825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.1/hive-aarch64-unknown-linux-musl"
      sha256 "f0653216e4f57ee5a8d10c85216b4a9902084516edd1b945b163cacf92d083af"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.1/hive-x86_64-unknown-linux-musl"
      sha256 "235ff7543174ce1b71feb4ceafda0f71e977d61fa2830ff3f572aa0e3f040106"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

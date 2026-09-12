class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.8.0/hive-aarch64-apple-darwin"
      sha256 "201d9bbadc74f11a812dd4a9ce5f6b13583201f3ee43970ead650699aebe31b4"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.8.0/hive-x86_64-apple-darwin"
      sha256 "a5178b4a503a013e4cdf4e519c1a0b2c4133c71f4ecf18001415a566ecdd61ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.8.0/hive-aarch64-unknown-linux-musl"
      sha256 "e969bc3ff00b3edfcd85bd4e4a05ef27fbde2bb31395249a17d93df6b2e3340d"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.8.0/hive-x86_64-unknown-linux-musl"
      sha256 "e1c17314d05c901d6fd04b013a7bf0c8dc36eb2d860722c60f703a69dceea74a"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

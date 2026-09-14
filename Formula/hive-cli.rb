class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.2/hive-aarch64-apple-darwin"
      sha256 "92ccab0e5581f2330b0befb6b98c194451aa1a1d806c1d11a7eea59696fe2d80"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.2/hive-x86_64-apple-darwin"
      sha256 "16b075ba2c9dddec88ec004442b5616ea999cf8bfdcf8d4be973f70e7fd515ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.2/hive-aarch64-unknown-linux-musl"
      sha256 "4098e565db6bc970283c659e6e57209055d30558165e78c53b75b5464050a411"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.2/hive-x86_64-unknown-linux-musl"
      sha256 "e29f2af3ce8b8aa5d3384ca778da6ee74a68390e4cc673467285f93347f7b851"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

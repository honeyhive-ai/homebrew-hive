class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.12.0/hive-aarch64-apple-darwin"
      sha256 "287bfa401e036e8e9104a40299a589c57d7109a5401380a627e7aad7f074bdfa"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.12.0/hive-x86_64-apple-darwin"
      sha256 "3653bc07722ddee7c31c995404b2356cbfcd837164cacc0d02ed4edf0b507138"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.12.0/hive-aarch64-unknown-linux-musl"
      sha256 "a5f718ccb204a30dd77d578035fc31626213fd426719f8b4343dcc77fd8d68f9"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.12.0/hive-x86_64-unknown-linux-musl"
      sha256 "786a60f9c843da3c7d9cc03552685b8d320b9afc3e593821e3bbbce76a0a0a7a"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

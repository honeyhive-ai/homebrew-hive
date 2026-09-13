class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.10.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.5/hive-aarch64-apple-darwin"
      sha256 "a48d2a81e850f0008384b7336851d849cd257fb8ad029f51ffa0372a7ac12dd8"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.5/hive-x86_64-apple-darwin"
      sha256 "0d406fe283c2fb3dcbb163ada34b2d836f375972e4633306937b4c54ac9aff13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.5/hive-aarch64-unknown-linux-musl"
      sha256 "ffd532aac4bc13f6cc4115b280cbb8d80e44837a4e2cf419bbd62c8ccba5888b"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.10.5/hive-x86_64-unknown-linux-musl"
      sha256 "a16598a7214d4107665ecc9aa5c736f1b2b314fc57cf5b5b75410f3e386181d3"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

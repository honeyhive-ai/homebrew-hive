class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.18.0/hive-aarch64-apple-darwin"
      sha256 "3aa3b8d747a5176cc9e71def40ea1e56fada83e1c3cf5ee040b3c891b6a6ba2e"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.18.0/hive-x86_64-apple-darwin"
      sha256 "7ef0ce0a926c2764307c5560ced54d1ad84107cf92644ebed1a8fb2ed0ae43b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.18.0/hive-aarch64-unknown-linux-musl"
      sha256 "fd487cf13683014baf40678e70eeb486619bedc9d2db0982166ea72a026e1a0e"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.18.0/hive-x86_64-unknown-linux-musl"
      sha256 "fa31568fa6b8c4ef89ab8c9c6166844e48a96bd5391de192435efc26c52d2778"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

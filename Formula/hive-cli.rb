class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.0/hive-aarch64-apple-darwin"
      sha256 "5d76ec26c05804d262bf368f8a022a3e555d4176cd35a7f69ab0c275e3852323"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.0/hive-x86_64-apple-darwin"
      sha256 "508797c140bd42b796f309377d24609b10999baf2e442b7bf4a3d9a9baf674f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.0/hive-aarch64-unknown-linux-musl"
      sha256 "82f740c7280b93a8d46758c8d8c2a89fa163c884ae00b1e5a0fc682137d5b156"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.11.0/hive-x86_64-unknown-linux-musl"
      sha256 "76f72b71c172784dbdf6fa80a1d144e4210f2e6598edd4087209281353acd7e6"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

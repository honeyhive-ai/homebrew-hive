class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.0/hive-aarch64-apple-darwin"
      sha256 "f0f230a46c28bcd83c7475fb659bff830511b3e2ae2c4865cee3b45f3658ac9a"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.0/hive-x86_64-apple-darwin"
      sha256 "8335b94103e9cc21bca3ac2d914d75ff3e7d80aaec7b23b6eab647a080fca1f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.0/hive-aarch64-unknown-linux-musl"
      sha256 "0c52b43c602746ba1dadf49cf9c841ad9c3ac76dab7d9cc63a8d922dbe5b4a5e"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.15.0/hive-x86_64-unknown-linux-musl"
      sha256 "41fb44b4de1fb4778529da6a4f1d20e9de08dc6452b7abe5d28ab1d9c0393dd7"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

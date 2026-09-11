class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.7.0/hive-aarch64-apple-darwin"
      sha256 "bfa2011d206dec2f1e982b91e4391fdb9646475b609bd8c2fa968cdb60d056ba"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.7.0/hive-x86_64-apple-darwin"
      sha256 "6646a1cee8420ef535bbf44681ab9f96239490a11f7d36165e590992329f3e93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.7.0/hive-aarch64-unknown-linux-musl"
      sha256 "36fca668242d56e440a04dc0c28162fd4f8c927566643dd23b49bef91c914b57"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.7.0/hive-x86_64-unknown-linux-musl"
      sha256 "0d24a8850407da52af811ef50f891f5406b4fc56d8286c98b8e17703c4a1c9ea"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

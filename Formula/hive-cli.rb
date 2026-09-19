class HiveCli < Formula
  desc "Headless Hive client + agent daemon — connect a workspace, sync E2EE events, run agents"
  homepage "https://github.com/honeyhive-ai/hive"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.13.0/hive-aarch64-apple-darwin"
      sha256 "5e87325f4032226aee351fa04181effad153a3e10d72b589d4f481e9dd81039e"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.13.0/hive-x86_64-apple-darwin"
      sha256 "fe0aa87670032b613101a7be71fb0da05f20778b999b267fbdc05eac2835ce85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.13.0/hive-aarch64-unknown-linux-musl"
      sha256 "9d1c65230222cd1c363625ccd192b2f6cb03dc8d7cecf1888de903b25f5b6467"
    end
    on_intel do
      url "https://github.com/honeyhive-ai/hive/releases/download/v1.13.0/hive-x86_64-unknown-linux-musl"
      sha256 "6962ef1987adb5747c7dbc87d1411ae751c23df0a43469a5664a799e462f7b39"
    end
  end

  def install
    bin.install Dir["hive-*"].first => "hive"
  end

  test do
    assert_path_exists bin/"hive"
  end
end

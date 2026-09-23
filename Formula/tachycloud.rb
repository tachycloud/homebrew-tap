# Written by scripts/release/release.py in the TachyCloud repository at
# each release; an edit here lasts until the next one.
class Tachycloud < Formula
  desc "Command-line client for TachyCloud"
  homepage "https://tachy.cloud"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://get.tachy.cloud/cli/v0.1.0/tachycloud-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1510fef5a3f7171d4c38068f85fd9fd59609f2336c8f6a060562286e03dc9440"
    end
    on_intel do
      url "https://get.tachy.cloud/cli/v0.1.0/tachycloud-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "57c4ae154b51bd1d5638d310a9bde8f4ec40b763ffa21fcc3b3e83544f72ec27"
    end
  end

  on_linux do
    on_arm do
      url "https://get.tachy.cloud/cli/v0.1.0/tachycloud-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53eddcefea11d061ae3a642a3e5016548b59739d912a10722a955721d4ecc6b1"
    end
    on_intel do
      url "https://get.tachy.cloud/cli/v0.1.0/tachycloud-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c15d9b071acfbe900b90c5f00d70d64fbc5256f992f0f578d0312894015c1d0"
    end
  end

  def install
    bin.install "tachycloud"
    generate_completions_from_executable(bin/"tachycloud", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tachycloud --version")
  end
end

# Written by scripts/release/release.py in the TachyCloud repository at
# each release; an edit here lasts until the next one.
class Tachycloud < Formula
  desc "Command-line client for TachyCloud"
  homepage "https://tachy.cloud"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://get.tachy.cloud/cli/v0.3.0/tachycloud-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f39bee10a3b65f707eb26dd0481a7ff6952698824dba9100036a2a15aee1534"
    end
    on_intel do
      url "https://get.tachy.cloud/cli/v0.3.0/tachycloud-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f9d72a115a1d50320dab900b7a9d9282ccc36bffd12bd73986166090357c6407"
    end
  end

  on_linux do
    on_arm do
      url "https://get.tachy.cloud/cli/v0.3.0/tachycloud-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ac82ce6b8fc29eef4e660951f80c3dcaab6ace28ce9ad59540910097555acce9"
    end
    on_intel do
      url "https://get.tachy.cloud/cli/v0.3.0/tachycloud-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "528ec090f141fb0cb7c54cadbd9da706470cd02f2a000f028ba284990ad2f120"
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

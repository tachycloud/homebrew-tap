# Written by scripts/release/release.py in the TachyCloud repository at
# each release; an edit here lasts until the next one.
class Tachycloud < Formula
  desc "Command-line client for TachyCloud"
  homepage "https://tachy.cloud"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://get.tachy.cloud/cli/v0.2.0/tachycloud-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "04eeca8cbec3fb84de1a22b993b67f9570eb648347f35c4298e6fefc12c666e7"
    end
    on_intel do
      url "https://get.tachy.cloud/cli/v0.2.0/tachycloud-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "03616a45aabb174df70ef546b13b114d128beba903a0d68bb1c57db2a72473ef"
    end
  end

  on_linux do
    on_arm do
      url "https://get.tachy.cloud/cli/v0.2.0/tachycloud-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eef722496d7492d8ddfd180f0c82e549357230e5c60efc310a1cdb33396efb7c"
    end
    on_intel do
      url "https://get.tachy.cloud/cli/v0.2.0/tachycloud-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89991a43731b603398bea208458bdbf5a781437191126537451aacc3127534d9"
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

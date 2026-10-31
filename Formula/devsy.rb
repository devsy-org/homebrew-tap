class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.25.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.25.0/devsy-darwin-arm64"
      sha256 "0ba9066f3ed1390413f58824d04991d5b36e5f1f8f1c1d46c8202eeed83575bb"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.25.0/devsy-darwin-amd64"
      sha256 "9777a4651706994e3010b7864a2054b30e64566beb5fa742e0f5a33da5ab324b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.25.0/devsy-linux-arm64"
      sha256 "cbefa993ad52b23590afecfee8ea9d91dc0010d4840f00aee8a2ded42dfde0fd"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.25.0/devsy-linux-amd64"
      sha256 "d249796fab501d27eafa8f329da2fb5f7a5dbfa048404ee9a5f88dd2e91006fd"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

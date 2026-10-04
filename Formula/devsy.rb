class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.20.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.0/devsy-darwin-arm64"
      sha256 "53c76f55b7a9372fbffd84eaf0fe7c97fb81d439568dbcabb3c879bf065a434e"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.0/devsy-darwin-amd64"
      sha256 "06d05167ef9ee7b3a9de09e0ba6436eda8f4fbe1eb75e14fe99bd73b08b5b25a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.0/devsy-linux-arm64"
      sha256 "5e5be2f0b3d521f9acd72d0d73b1e2d14c5bdead39737890537f8908d3155c9b"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.0/devsy-linux-amd64"
      sha256 "e6e1de6ca5db0564f995c64ac72526a1276b2cdb60f55323f40097e88c087ed8"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

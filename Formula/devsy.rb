class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.16.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.2/devsy-darwin-arm64"
      sha256 "d401c527563e0181c397a0964263c6c357e611cece23a24a85c974255827c077"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.2/devsy-darwin-amd64"
      sha256 "c1762259cdbff928ea2543264deaca4100b3ced88276aae01f0177fae3d99c89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.2/devsy-linux-arm64"
      sha256 "31060b96486b5398f2aa3ee0875b2555782a2db0954a799d387be38ed4b4990d"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.2/devsy-linux-amd64"
      sha256 "4983c52a3536c5a91d1b5f356a1c3428778ebf3f896d9897f60bce3978abc839"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

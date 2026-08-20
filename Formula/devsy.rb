class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.16.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.1/devsy-darwin-arm64"
      sha256 "9883415f10db181e8a3684ef954c9873746386de54b68370260de233ee6400d2"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.1/devsy-darwin-amd64"
      sha256 "9a12600a7bdb5bfd50d7eb1a2674ad4658744db9c393f1f55d2088d2eee1a838"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.1/devsy-linux-arm64"
      sha256 "d3ffdf66eb0e4d8916751ac402b4ac2929d283437ca632f4dbba6bd006d3e27f"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.1/devsy-linux-amd64"
      sha256 "79eeb50d25363d6eb682dca53be78ef717b001f0d8d1f636ba3179e204e162fe"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

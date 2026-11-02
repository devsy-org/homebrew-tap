class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.26.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.26.0/devsy-darwin-arm64"
      sha256 "6f2807bdc14ffd5d01744a3cff3c3788cb1e42fd17a8f482ad639e1f1b6a503c"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.26.0/devsy-darwin-amd64"
      sha256 "9e5f7db50feb54c22d6f60a729917feb0a9dd91aef7b7af2c1787a4d5064e8fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.26.0/devsy-linux-arm64"
      sha256 "e7bb9e00c191c9681c644b915cca1ec3bf9c7ac33f4b74db9e6bdaf7fc9658ec"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.26.0/devsy-linux-amd64"
      sha256 "93ea26c5dc0d17f3e17aafc873f751f556e2879e2a9cdb7a3ff158ddbd16a3f0"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

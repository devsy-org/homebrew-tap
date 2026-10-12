class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.23.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.2/devsy-darwin-arm64"
      sha256 "2de96ea53362219c378a971119d7fe4a97a550fb6d23272ef4ea7962a7915960"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.2/devsy-darwin-amd64"
      sha256 "810e314251cfb4912208880b06d80fc3d3facd0a4594bb15353c1a30c76dfedc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.2/devsy-linux-arm64"
      sha256 "872cd988be2f5c37dc92da684c92fb6e9dd56153963366c1bdb143b78f816ae2"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.2/devsy-linux-amd64"
      sha256 "0e9e703662575faa796c933e108bbaa9bcfbcf95046825da9c8eb3cf452e8891"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

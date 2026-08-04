class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.14.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.1/devsy-darwin-arm64"
      sha256 "cb7a74ed2fb78749d918434d8ed37efa6fdb25e450a23fcda966962ef8c931dc"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.1/devsy-darwin-amd64"
      sha256 "bcae27bc99d718be1ce7551f036a5735ae2869578f0253bd089d135231ea9681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.1/devsy-linux-arm64"
      sha256 "0f3d4f7b3f5e9b8cc7b46a7930d6c9db453747db11e4845b38926523708b196d"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.1/devsy-linux-amd64"
      sha256 "19b69f235828d1202888fce4b2a958ccbcae8a77c5301e04173572a03d4aa235"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

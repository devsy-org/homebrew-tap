class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.27.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.0/devsy-darwin-arm64"
      sha256 "b2a02eb27015c74e9ae77c837afcadfaf2cea653c179a2b690307ae4907bc88e"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.0/devsy-darwin-amd64"
      sha256 "8e52c9b8c7c4addacc19568df68ae9706e7890612dcb43e99f04676d182b08f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.0/devsy-linux-arm64"
      sha256 "4672086d8ae6974a36e7761a45a1345c349e826353ccd6b7f241cad83495fba8"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.0/devsy-linux-amd64"
      sha256 "31a3f79af2084d1ba2ed6de00fb02cb16950820d8c91d0a7e6747684881f60fc"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

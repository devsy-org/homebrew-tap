class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.11.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.0/devsy-darwin-arm64"
      sha256 "33659aa6c9afe1df19fcacf7704f91923956a25e9176e2f92b38a262b069c99b"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.0/devsy-darwin-amd64"
      sha256 "7e19e0027f5db5d695832e0f99c7bf6054a735cac788dfa32e325d72f5cb2def"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.0/devsy-linux-arm64"
      sha256 "94ad4f562e3210dc823e2fc3ad4250f62e25218d7edcb95b40d04a3fcab1be0c"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.0/devsy-linux-amd64"
      sha256 "c800da1c895e57990cbcc9dc411da779640fbefc986a592ab14db80589dad215"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

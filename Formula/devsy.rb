class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.16.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.0/devsy-darwin-arm64"
      sha256 "af37595a710bc7f435a7dd933650d16fc2d1186ff48ec6eef9ef804a7997734e"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.0/devsy-darwin-amd64"
      sha256 "09fdb26cab4eb2ea9507ae809931dca0ec53840226a7b2ded9a5937fd434f9c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.0/devsy-linux-arm64"
      sha256 "11d48e37cb9bd342c14cee28d0a5201e5c326c83be0a24a09de25f8d580387cc"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.16.0/devsy-linux-amd64"
      sha256 "3cf370095318e386e1787749baec4be085dea858ba029477c0d88673c1b93930"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

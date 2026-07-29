class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.11.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.2/devsy-darwin-arm64"
      sha256 "e6f9210b7dd3ee02bd71d868c415847d03198bdbd2137f1894b1effadbb792e9"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.2/devsy-darwin-amd64"
      sha256 "a577f29f43dd2660c7556ee1370dfc80e3b8f0ae973932df71ae6cbd95042ba3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.2/devsy-linux-arm64"
      sha256 "8449675620052e78967ecdc1361a28e0340ee4b1f36c057921e8ad76d940036f"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.2/devsy-linux-amd64"
      sha256 "72e6168552424710549a2c64eed8bdbd196b0ac161e1bc03d7869aaacb5a4b80"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

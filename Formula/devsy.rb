class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.11.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.1/devsy-darwin-arm64"
      sha256 "82bd4357a5b927e19f06f4eea1b0a86226b06c1116b20aca06e704d5f3f5bc0a"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.1/devsy-darwin-amd64"
      sha256 "8d3bf43d2c3291c2eb6ca094389b1eaa92b41a10c211f18f8583be8ddbdc88eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.1/devsy-linux-arm64"
      sha256 "6c59b40621e4b1d18d792c5bbb97b4d93de4da5f2c0051ac99892451932a8a98"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.11.1/devsy-linux-amd64"
      sha256 "462583408845c77b3754f698d65b471079be661bcc5914791345b0ac9f8c1c28"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

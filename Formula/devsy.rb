class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.12.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.1/devsy-darwin-arm64"
      sha256 "fcc96a95166d82e07149f907d1fcb7e1f28db04c3e768fedac1ec1b2abc2842f"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.1/devsy-darwin-amd64"
      sha256 "1a4cdecca4229542b898a2c3d56d4c57811534714b666101f66796b04675e8df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.1/devsy-linux-arm64"
      sha256 "ff4c6b6813fada6a13d3821a93eb150702b710ffe64b3fed1351cc0f889544e6"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.1/devsy-linux-amd64"
      sha256 "4f0ddd33566da732fc7fc3636b2796b8ab24e8b2f2b36c1452cc04094ae6c078"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

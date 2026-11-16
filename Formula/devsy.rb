class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.27.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.1/devsy-darwin-arm64"
      sha256 "1fb576ce577210d8935c2f53c6e8005900ababf06cab404e17e4f242b1a70438"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.1/devsy-darwin-amd64"
      sha256 "7fd018a8d0c556b0f3f30220c4da0b1053024f68760625de79cee0be56012179"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.1/devsy-linux-arm64"
      sha256 "7c1c380b7e5a95aa9f4f974f1e27eb4a2f02d3bd784f57db9b011037a6c5c36a"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.27.1/devsy-linux-amd64"
      sha256 "2be0800ab69b8f53c67ff9e668364b332cd4aa5952a3d3a36d8914ddf7ebd541"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

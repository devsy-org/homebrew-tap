class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.18.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.18.0/devsy-darwin-arm64"
      sha256 "5ff6edc21558b02c44496e13d4cf4f7146cf62e0156079c53d4b853abcbf395d"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.18.0/devsy-darwin-amd64"
      sha256 "7f4a1c083f54cdf845608b9976db9a73b6aa236fe623871dbf648e2ebb6b08c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.18.0/devsy-linux-arm64"
      sha256 "86cdb5a8d69514f018f209124702bb1e513bc6fc3f037b16551ce57b2c7a18aa"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.18.0/devsy-linux-amd64"
      sha256 "97c0f877d28bc92568234d271a7cc9a98d7f6087f6914fe6eb3c4ca92b5ce558"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

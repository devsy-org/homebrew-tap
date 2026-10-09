class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.23.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.1/devsy-darwin-arm64"
      sha256 "afafd5b884b5dee12783ac7fddd9bca3c7839298f38c5bee08cbddad6d182457"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.1/devsy-darwin-amd64"
      sha256 "539957bd240b261e9f1c8344d63233a26df9479e493e4a83175bf1706ae56229"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.1/devsy-linux-arm64"
      sha256 "bea3c8250cb68ef11c3cdf818e9ee5c639db97ff6c01ebc84202b241af319243"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.1/devsy-linux-amd64"
      sha256 "705363aedf92558d9423808b706392eea9da463604b9cca803377d854aacda41"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.20.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.1/devsy-darwin-arm64"
      sha256 "658d508c5cf8f94cdd2e5bace21df6d359903205807a51e3835fa089a9bcbd50"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.1/devsy-darwin-amd64"
      sha256 "1febebb8bbd6eff7e7b93cde6c8da70375c24cc0e740e5a87ce381b8458d7968"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.1/devsy-linux-arm64"
      sha256 "2097352f6b50f2d0984b089d37da2ce8984ebb749598db30f5f70d58aa32b422"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.20.1/devsy-linux-amd64"
      sha256 "1ef5bdbdb37dde76a4588a4d697654a39fc725e4f4f048660f3054a2ef0cddb5"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

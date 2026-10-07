class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.22.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.22.0/devsy-darwin-arm64"
      sha256 "70667df91caec3fb32389c6e25850793d436c47e32182b9b4d1c834cb18beff3"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.22.0/devsy-darwin-amd64"
      sha256 "74af9fbe54e5bfae5a184db521a034d665fa621c1c4e9415e196678ce871d9bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.22.0/devsy-linux-arm64"
      sha256 "95c6444f3aa9daff66c1bfd1d923d555f90d77b643e8df56e6b71f9f079f17dc"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.22.0/devsy-linux-amd64"
      sha256 "f2bf03f05e4b7e4ec488bc8ab75c6f9729d567dbede3942463669065c672018c"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

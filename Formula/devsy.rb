class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.17.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.0/devsy-darwin-arm64"
      sha256 "0f191150bde5712f975e5dec9ca2bd09ba48e524a16a8145d4e10543aa78196f"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.0/devsy-darwin-amd64"
      sha256 "f78264c5220ce6c7cf9d24fb1403cd7c415aa3e188aca5ad91368647afd8d22e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.0/devsy-linux-arm64"
      sha256 "da9bb439f87f96de2e309587f4608ae129cfd65534ee343891e459549fb1a53c"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.0/devsy-linux-amd64"
      sha256 "42f9e75a04826aefcfdd6df9025706ad02e45914089b59439360f161dc741127"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

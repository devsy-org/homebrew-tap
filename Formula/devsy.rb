class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.24.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.24.0/devsy-darwin-arm64"
      sha256 "5f55e6d0cd24a24ae38d135e141568049f0220840b7d040e812dde979d8ed4f6"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.24.0/devsy-darwin-amd64"
      sha256 "e64e0a31404671a4c667f7b6159eb3f2baea33fc9ae2c99f8d5b94db9a025e50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.24.0/devsy-linux-arm64"
      sha256 "f7b7aa716e421affac06d7c8a9093fe71a935b27789b5d52a52004a081e87bc6"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.24.0/devsy-linux-amd64"
      sha256 "d1f75dfbff189cf65ff472eadc061d5a6e3d9886486a0e340b96dce07636a4a3"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

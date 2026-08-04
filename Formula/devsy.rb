class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.14.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.0/devsy-darwin-arm64"
      sha256 "5bf61d34e76ea057800b48a3a2b48f521390b105e35ffd9520997bba8aef76ff"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.0/devsy-darwin-amd64"
      sha256 "fa1806cde4510533bdfec2fa5b506d465540cfeb9c0f02ab93fec495829d465d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.0/devsy-linux-arm64"
      sha256 "9e7566ce61deb831152714bd9722dd03671143f54d65f5b2e7b10db44b6c29f0"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.14.0/devsy-linux-amd64"
      sha256 "e24178c17ebbf663f37e548eb63417c5ba86b6c72afba5e9b3790049bce2d055"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.17.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.1/devsy-darwin-arm64"
      sha256 "d8f9e1bcfcd4620a25a6aeba198034cd2b0a2188cb42f226008235fd449d1881"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.1/devsy-darwin-amd64"
      sha256 "74dca204445eb56b67f2f8a149553227e2baeb723199a9128276038b1c870ee4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.1/devsy-linux-arm64"
      sha256 "bde3f7d227cacfb781f349a0b9d0b63dd878f8ae9db6a4bc343d752b0fb3f183"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.17.1/devsy-linux-amd64"
      sha256 "d2c3543c76d1703729b3217659dfc235c157bce13b434a16a9cbb50db1189828"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

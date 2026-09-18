class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.19.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.19.0/devsy-darwin-arm64"
      sha256 "2b713da95bdb4c9f0424cc62f6c901380c2ffd96931a8d1f46be1284d2fd02ea"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.19.0/devsy-darwin-amd64"
      sha256 "189352ed469fd7cb48258d63bd1dd838c6bf5f79512c1b6c6b69545853013223"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.19.0/devsy-linux-arm64"
      sha256 "72e366261e5d81e3afc42efd08a81f5eee93d38104f9461cc9c533828224785f"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.19.0/devsy-linux-amd64"
      sha256 "2f43f28ab5b399b379091aeb09628ec6b70dc82212a64d30de8e2a4a18a49ef5"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

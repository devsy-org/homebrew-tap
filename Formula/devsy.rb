class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.12.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.0/devsy-darwin-arm64"
      sha256 "263f01568a20da9ee4f30c6e287a01cbe138275fdb68f6fa8c14227aa95cbf0c"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.0/devsy-darwin-amd64"
      sha256 "95e0c9eadf33203ec07b790cff0777930ff04fe7713b9d4338d5cae3b1b4b015"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.0/devsy-linux-arm64"
      sha256 "bfdf35349dbe6fe88f3f3d3c3e7657b441c07ad77880f3b382a47585085e9c7d"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.12.0/devsy-linux-amd64"
      sha256 "40e179c960fb2f4539812400a9c34faa011ed6bdd1084c0486dfc6a90c73ec2e"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

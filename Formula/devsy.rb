class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.13.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.13.0/devsy-darwin-arm64"
      sha256 "c5e6628d06e3ae0cf58ae82b9b4e42fc1d21b0df487b89f6bf0b74a4ba28a428"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.13.0/devsy-darwin-amd64"
      sha256 "fa44ea3201075215a4825be4ac880be60ee0b0dc58e59a8d527edfc22ea251df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.13.0/devsy-linux-arm64"
      sha256 "7d2a04422a94cbaae885fc3b3a93a12a52d8483cfc4d95e1f0f40feae22c39a7"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.13.0/devsy-linux-amd64"
      sha256 "f6bec6fc565442df1db341393fed7d7ecf0ffcd66ef717f036c16a934685976e"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

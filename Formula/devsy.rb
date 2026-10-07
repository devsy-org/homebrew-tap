class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.23.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.0/devsy-darwin-arm64"
      sha256 "4cccd7a799034db835cec6d715901d61f57e7e648e878e87d6dd64600b4ce144"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.0/devsy-darwin-amd64"
      sha256 "025ed13155414521de7b272e42d7e30f9d84aea830e895c22e81e0f7859137e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.0/devsy-linux-arm64"
      sha256 "4418123145970d9ec9034c7d966a9b27571e47820c59886e31965911aa7518d7"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.23.0/devsy-linux-amd64"
      sha256 "bf6e00b498a09ed614670ce24bd7cf46830b31218e773961f6c267c1a25b8186"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

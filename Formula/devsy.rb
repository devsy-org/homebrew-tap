class Devsy < Formula
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"
  version "1.15.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.15.0/devsy-darwin-arm64"
      sha256 "2eb051f4d18a6119983b3af73fb5d7d24dd7fbdbd13fa56ab0d6339bd4e56d4b"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.15.0/devsy-darwin-amd64"
      sha256 "1ee52326ef9b371d19194e5c72408fe85e4a3609767e3249b622645a6ff34b4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devsy-org/devsy/releases/download/v1.15.0/devsy-linux-arm64"
      sha256 "8eba608bf2167aa6d991979f377005b8f6223810b0a67cc7180aa0b4fc1220f8"
    end
    on_intel do
      url "https://github.com/devsy-org/devsy/releases/download/v1.15.0/devsy-linux-amd64"
      sha256 "0633d0fda570ac799b4989596287386b87b11cc8f7233a80267150f9cb16f69b"
    end
  end

  def install
    bin.install Dir["devsy-*"].first => "devsy"
  end

  test do
    system "#{bin}/devsy", "--version"
  end
end

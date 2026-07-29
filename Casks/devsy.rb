cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.11.2"
  sha256 arm:   "ac750b0d1608eb88400ae61eeef1a805c6adabf1bf1d18566694b78c9448c09a",
         intel: "7cdfacd6fb058b22519f2df199f2260c5344d74a64cb43d087b0865f627c0096"

  url "https://github.com/devsy-org/devsy/releases/download/v#{version}/Devsy_mac_#{arch}.dmg"
  name "Devsy"
  desc "Standardized dev workspaces across Docker, Kubernetes, cloud, and SSH"
  homepage "https://www.devsy.sh"

  app "Devsy.app"

  zap trash: [
    "~/Library/Application Support/Devsy",
    "~/Library/Logs/Devsy",
    "~/Library/Preferences/sh.devsy.app.plist",
    "~/Library/Saved Application State/sh.devsy.app.savedState",
  ]
end

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "898b56c967ffb8b80923c1fcd5bf2f0ffe4b515c04041704ec46a87a4ae099c0",
         intel: "a88760457d3aa3d593454c61bc49163b11f38c027977a0d43a791242464832d9"

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

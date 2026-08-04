cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "cea9dcb619cf452cb4e2f673ec1d4a0223b5fab92501d51be874e1c8ecc3c129",
         intel: "4ac57f39b29382cb00105e0069dd1a6538a505fc7ed495f09ffb7e5e5c1afc78"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.12.1"
  sha256 arm:   "8e41d85467827f9b642bfa61a9a7945fba217c6f0abb5a2af2e118960fd47151",
         intel: "d1bd5af5670fce492f23bc2cbf3a99abbb6343d841e6c6594c28c35c7b75a143"

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

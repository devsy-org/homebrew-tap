cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.23.2"
  sha256 arm:   "4d2a7e3aef7a91ce68de30fe4b20de7c66135e9ec84f4dd98455c47b199c425f",
         intel: "c29e4de5029ed23c594027cf33187ed77f98aecedae9c3dfe0a034c90d8c84cb"

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

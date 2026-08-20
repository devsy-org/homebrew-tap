cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.16.1"
  sha256 arm:   "ce3d1dc1112e2cdedcd5bb406ee52495d1e5a77ad23aa9b05a6e95b127b1ca5c",
         intel: "2df8066e11cd3a349e8fb092591041523107755e42d1b74318940a5b234d5a59"

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

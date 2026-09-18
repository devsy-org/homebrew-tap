cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "2750bb5c6f6e9d28c9da5ca026b368005d3d8263047bd32cc74ccf2ba243769f",
         intel: "5bdc5b547ea843c7009406dc638e8da9ea33e9e0a1528fbf6857d8ec2d150dc5"

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

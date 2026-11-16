cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.1"
  sha256 arm:   "fce2b1ffa4d5da51cd6c1ab8e2581aad2c90d2568a9791cdcacbb1bd486c441d",
         intel: "06d98dcf24ead67babe37b1ba0542ef44d0e9cf874491a16e9361c5cfdc091fc"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.23.0"
  sha256 arm:   "70e992c2cfa640059e81457ae0779e6a208792431d19715c5e32b6e8047b8b4a",
         intel: "afb91180bc9cb1e9586e4e19c8df9f46eb86e1aea28febfecfbcd77edfcea21c"

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

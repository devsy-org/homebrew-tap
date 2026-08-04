cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.14.1"
  sha256 arm:   "79483cbe4918a15993d0ebcafaea83937ef0fc8f12df61feec1293bf1a09a7c9",
         intel: "684d09772e0e3ed12cdc3eb276645bd2c2e9fa7c000f32ebdca45484fa7932d9"

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

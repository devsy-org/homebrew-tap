cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "8dd6d7906c64b31b8e020b41274512d12dbfe9bd2f43676d47d27a1a1c337c27",
         intel: "51329795b21083c249117b91260a7120e1f393f61083cbb13f642b1865ce5343"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.22.0"
  sha256 arm:   "bf893537b970304381c5b7dedba865a99394ed0772cd2954f135d0642c12ff11",
         intel: "9d1aef23a7a4605f58b268ea2b68cab3c538eb3dfee68876c1f8fa8edb0751a9"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.24.0"
  sha256 arm:   "7d034a90b13da763da868a533703208e4b156cb95c4ee130a49fcebbb7635d36",
         intel: "9e63b1af28451b8826990ca812a0c422db52d124065f0dc5c1b9b2b2addb8097"

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

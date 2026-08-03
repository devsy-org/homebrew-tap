cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "cc98f9631de79377be5bef0518b1b24dbda37ca3c5acd525cb0bf88fa12b2b02",
         intel: "fcd92116f1986a27256091123a72581cdfb3d0ce443827fb658bb5d46e392f4e"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.23.1"
  sha256 arm:   "c797ba957d2455fc6f8a9f6ab701355b0caba66c476435ec401c22c5d6c7d7f0",
         intel: "cdfbd291e8e224f91258346c83317bd3f60650e5413a599cb2336ac61f1f9d4b"

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

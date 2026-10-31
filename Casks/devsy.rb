cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.25.0"
  sha256 arm:   "49bb6ddb700050b8586645200d0b77d133b3774bed9651c87d0f6247ecf539d2",
         intel: "6f7ff73bf624d435bed055fdd90ddbb605ac33746d15851e62cf7ac538c3da01"

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

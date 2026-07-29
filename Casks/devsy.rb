cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "6d128f13f16417e6e66e04ccf13030bdbdb11906fc87bf2bb7cd58cc855e7bb1",
         intel: "779c3efcf9cf14ae55333f642fa257ae7205e171e7edc012fd7714e210bb7492"

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

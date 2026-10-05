cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.20.1"
  sha256 arm:   "5166130db4b45a57fcf3950c3bd6d49747af415c075b473a5099bd2f70bdb3f6",
         intel: "e59639478dffd7a649c5c7bc2480f2bbedcc215874da41aa9eba8c74451d62a0"

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

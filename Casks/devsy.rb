cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.0"
  sha256 arm:   "bd974a105a13efff72f1379d2f665b24eb69cf7b61b76ba2eff67f6b2340e751",
         intel: "75b62df5298f22879fb8090d5dd6ad8fdfe11bbd41d4a802c9fe6f34d2ced9ca"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "5faab47ad9dc519a6a8c7c31be1dba8a521471d75a820f312f0aa58f0faee72a",
         intel: "54e3160a58fada7acd2ce67875ae47254262438aee523d377c91e94f07f80a85"

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

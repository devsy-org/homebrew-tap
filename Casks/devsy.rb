cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.16.2"
  sha256 arm:   "3e80c9ebdd1545975e3dcf43548d6c2dd8c4ffbe9e11f652874ce87108c9b778",
         intel: "9f19cfeb1794fe346538dd83096bb5f6198fa0609cc5a0fac88836d55053da5c"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "962bd3430ca52f7fe350365ac56f5ff93fc526d42a5849bd8a43ed74d66bf730",
         intel: "2ce348c4a7c24aaa59eb2f629d4f593d8184df77e79cda9d906e72caf6d908a4"

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

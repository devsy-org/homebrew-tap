cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.26.0"
  sha256 arm:   "5bb9fff1c7e62292c2591d7bf826dcce4f5ae6eb790641db00e67bcfe3c6699f",
         intel: "9db594932c72939750b90743fe8df03b15695c69ff6ff8d453f6ab54869292fd"

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

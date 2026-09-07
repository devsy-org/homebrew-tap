cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "d957b19b4e3af4b428c0f8464c22dbe70d7851ade140e3ef1ca19d98b4383fe5",
         intel: "97451780aaddf6267f1d78ea0a79775796c0cf3c37ad80364c873dbd252c6ec2"

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

cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "dddbeb04f96db8d31cdb8eac23843abcbe0bb8f8903a77485fe38b4a68e489fc",
         intel: "bf27c348e38ebaf7677a1239bf411d64b83a9390761503f46a7cb1896866d00f"

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

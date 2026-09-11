cask "devsy" do
  arch arm: "arm64", intel: "x64"

  version "1.17.1"
  sha256 arm:   "d0fccb8113267e2d6988bcde9152f910499cd28392732fae8e0338c97eadc835",
         intel: "f70f0baa124b33b2a8934b4e5ed1d7a0e5c73069e76f3d357f9508300b6e7d2b"

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

cask "canis97" do
  version "0.1.2"
  sha256 "586b00e477fe6505c402f110b792d5bbf3ad4540f877cfde7aff04afb8f72f77"

  url "https://github.com/gabeosx/canis97/releases/download/v#{version}/Canis97-#{version}-arm64.dmg"
  name "Canis97"
  desc "Native macOS SiriusXM player"
  homepage "https://github.com/gabeosx/canis97"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Canis97.app"

  zap trash: [
    "~/Library/Application Support/Canis97",
    "~/Library/Preferences/com.canis97.player.plist",
    "~/Library/Saved Application State/com.canis97.player.savedState",
  ]
end

cask "canis97" do
  version "0.3.1"
  sha256 "8f527b28495f838f1468b482290ba09f7822bb9ef8b1940f103181a82692d61d"

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

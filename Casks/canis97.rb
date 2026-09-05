cask "canis97" do
  version "0.2.1"
  sha256 "a18fb3a7c50f415b7a6bb99743c05612d06f259850539119080db85849fbf90f"

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

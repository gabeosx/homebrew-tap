cask "canis97" do
  version "0.3.2"
  sha256 "c7371386f268327e6e617f791350619fbbbaf452dfcd13e4dd79d9ba95b5d478"

  url "https://github.com/gabeosx/canis97/releases/download/v#{version}/Canis97-#{version}-arm64.dmg"
  name "Canis97"
  desc "Native SiriusXM player"
  homepage "https://github.com/gabeosx/canis97"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Canis97.app"

  zap trash: [
    "~/Library/Application Support/Canis97",
    "~/Library/Preferences/com.canis97.player.plist",
    "~/Library/Saved Application State/com.canis97.player.savedState",
  ]
end

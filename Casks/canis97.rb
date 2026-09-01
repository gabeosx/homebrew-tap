cask "canis97" do
  version "0.1.3"
  sha256 "a6af385b10c186888f756fa4feacf50048671a915457099ddafb3d047be8449d"

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

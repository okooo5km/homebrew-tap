cask "prism" do
  version "0.3.0"
  sha256 "5ede6d71caccb2d8bc0977a8b504abdf220b8ad17b7b8b8b91f74096f4ff4dc9"

  url "https://releases.5km.tech/prism/Prism-v#{version}.dmg"
  name "Prism"
  desc "Claude Code API switcher for macOS menu bar"
  homepage "https://prism.5km.tech/"

  livecheck do
    url "https://releases.5km.tech/prism/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Prism.app"

  zap trash: [
    "~/Library/Application Support/tech.5km.Prism",
    "~/Library/Preferences/tech.5km.Prism.plist",
    "~/Library/Saved Application State/tech.5km.Prism.savedState",
  ]
end

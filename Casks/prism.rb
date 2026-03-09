cask "prism" do
  version "0.2.0"
  sha256 "a084ba7e3161d83e73a7513b0664d6e3efb495711f95ce1c559f9abe87d6d1ae"

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

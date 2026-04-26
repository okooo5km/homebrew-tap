cask "prism" do
  version "0.3.1"
  sha256 "0f8ed1296b2ff2901ead113a71ffca8a7a407ee9d2a41bf8242612db8c577ed1"

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

cask "orchard" do
  version "0.5.1"
  sha256 "cdc8613b4699b9a2a169d300e9beed7e8f8ee2464122de3efa8cf36011b3ae35"

  url "https://releases.5km.tech/orchard/Orchard-#{version}.dmg"
  name "Orchard"
  desc "MCP server that bridges AI assistants to the Apple ecosystem"
  homepage "https://orchard.5km.tech/"

  livecheck do
    url "https://releases.5km.tech/orchard/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Orchard.app"

  zap trash: [
    "~/Library/Application Support/tech.5km.orchard",
    "~/Library/Preferences/tech.5km.orchard.plist",
    "~/Library/Saved Application State/tech.5km.orchard.savedState",
  ]
end

cask "orchard" do
  version "0.6.3"
  sha256 "0748e4da9bb20baf3d1cb1b3d38694c834e89e2a6fbddd09d06ed5f73179cbe2"

  url "https://releases.5km.tech/orchard/Orchard-#{version}.dmg"
  name "Orchard"
  desc "MCP server that bridges AI assistants to the Apple ecosystem"
  homepage "https://orchard.5km.tech/"

  livecheck do
    url "https://releases.5km.tech/orchard/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Orchard.app"

  zap trash: [
    "~/Library/Application Support/tech.5km.orchard",
    "~/Library/Preferences/tech.5km.orchard.plist",
    "~/Library/Saved Application State/tech.5km.orchard.savedState",
  ]
end

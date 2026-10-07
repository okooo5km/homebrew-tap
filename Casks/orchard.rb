cask "orchard" do
  version "0.6.4"
  sha256 "874a9244d90e641637e7fc3c4906883c35c101e9552dadf105838e0d4a97d6c0"

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

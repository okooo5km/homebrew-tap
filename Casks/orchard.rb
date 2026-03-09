cask "orchard" do
  version "0.4.1"
  sha256 "999dda645e34750be72d8e17c12a320dab72e87e053fbd5405653699b867643b"

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

cask "hipixel" do
  version "0.4.2"
  sha256 "2248952e002237e3eb30dca4cb08553fa7dbe230a4c2cf3ef43f05daeee73a55"

  url "https://releases.5km.tech/hipixel/HiPixel-v#{version}.dmg"
  name "HiPixel"
  desc "Image upscaling tool that makes images crystal clear"
  homepage "https://hipixel.5km.tech/"

  livecheck do
    url "https://releases.5km.tech/hipixel/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "HiPixel.app"

  zap trash: [
    "~/Library/Application Support/tech.5km.HiPixel",
    "~/Library/Preferences/tech.5km.HiPixel.plist",
    "~/Library/Saved Application State/tech.5km.HiPixel.savedState",
  ]
end

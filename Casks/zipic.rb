cask "zipic" do
  version "1.9.0"
  sha256 "9eb52ee46c7ab5ea4ca0982415da99fded1b7d7354f75e50847bdae6cb44eb66"

  url "https://releases.5km.tech/zipic/Zipic%20#{version}.dmg",
      verified: "releases.5km.tech/zipic/"
  name "Zipic"
  desc "Image compression tool"
  homepage "https://zipic.app/"

  livecheck do
    url "https://releases.5km.tech/zipic/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Zipic.app"

  zap trash: [
    "~/Library/Application Support/studio.5km.zipic",
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
    "~/Library/zipic",
  ]
end

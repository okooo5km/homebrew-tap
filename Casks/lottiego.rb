cask "lottiego" do
  version "0.1.2"
  sha256 "0d53f653245d19a0b5e00c939bfe89cc4daeedf2d5d2647095fb96a4f9845eea"

  url "https://releases.5km.tech/lottiego/LottieGo-v#{version}.dmg",
      verified: "releases.5km.tech/lottiego/"
  name "LottieGo"
  desc "Lightweight tool to reduce the size and complexity of Lottie animations"
  homepage "https://lottiego.com/"

  livecheck do
    url "https://releases.5km.tech/lottiego/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "LottieGo.app"

  zap trash: [
    "~/Library/Application Support/tech.5km.lottiego",
    "~/Library/Preferences/tech.5km.lottiego.plist",
    "~/Library/Saved Application State/tech.5km.lottiego.savedState",
  ]
end

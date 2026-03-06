class Svgift < Formula
  desc "Swift native implementation of SVGO - the SVG optimizer"
  homepage "https://github.com/okooo5km/svgo-swift"
  url "https://github.com/okooo5km/svgo-swift/releases/download/v0.1.0/svgift_0.1.0_darwin_universal.tar.gz"
  sha256 "f21145db9e412f3c59b2d7ed4accced10fa13fd0f41328e5b830bf71715bdfed"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "svgift"
  end

  test do
    system bin/"svgift", "--version"
  end
end

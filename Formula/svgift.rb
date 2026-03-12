class Svgift < Formula
  desc "Swift native implementation of SVGO - the SVG optimizer"
  homepage "https://github.com/okooo5km/SVGift"
  url "https://github.com/okooo5km/SVGift/releases/download/v0.2.0/svgift_0.2.0_darwin_universal.tar.gz"
  sha256 "a6612f96f02f9239aefe4f5a56aae024d2fd52a5bcf5930e58e00fa74f0ae55e"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "svgift"
  end

  test do
    system bin/"svgift", "--version"
  end
end

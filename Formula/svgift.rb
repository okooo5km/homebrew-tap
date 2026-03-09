class Svgift < Formula
  desc "Swift native implementation of SVGO - the SVG optimizer"
  homepage "https://github.com/okooo5km/SVGift"
  url "https://github.com/okooo5km/SVGift/releases/download/v0.1.1/svgift_0.1.1_darwin_universal.tar.gz"
  sha256 "2587b4153cc64fca4164c35dbc48acfa4a1c18e7af63eb04f9a8743a8f92c34f"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "svgift"
  end

  test do
    system bin/"svgift", "--version"
  end
end

class Svgift < Formula
  desc "Swift native implementation of SVGO - the SVG optimizer"
  homepage "https://github.com/okooo5km/SVGift"
  url "https://github.com/okooo5km/SVGift/releases/download/v0.3.0/svgift_0.3.0_darwin_universal.tar.gz"
  sha256 "a1dcf5d62feeedcce9f63258d238a98f730f1dbfafabdf64305f8552399f1722"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "svgift"
  end

  test do
    system bin/"svgift", "--version"
  end
end

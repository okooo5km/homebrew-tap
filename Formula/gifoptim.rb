class Gifoptim < Formula
  desc "A pure Rust GIF optimization engine"
  homepage "https://github.com/okooo5km/gifoptim"
  url "https://github.com/okooo5km/gifoptim/releases/download/v0.2.1/gifoptim_0.2.1_darwin_universal.tar.gz"
  sha256 "404d34ab010cca40e08ac9c5ff3b5835a26591901619347cbd931f7684d19a05"
  version "0.2.1"
  license "MIT"

  def install
    bin.install "gifoptim"
  end

  test do
    system bin/"gifoptim", "--version"
  end
end

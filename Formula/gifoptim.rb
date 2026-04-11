class Gifoptim < Formula
  desc "A pure Rust GIF optimization engine"
  homepage "https://github.com/okooo5km/gifoptim"
  url "https://github.com/okooo5km/gifoptim/releases/download/v0.2.0/gifoptim_0.2.0_darwin_universal.tar.gz"
  sha256 "714d67e9851c3d63908ab8cad1ccf80da905c43c08488591b9c32074176b1206"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "gifoptim"
  end

  test do
    system bin/"gifoptim", "--version"
  end
end

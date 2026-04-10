class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.0/pngoptim_0.5.0_darwin_universal.tar.gz"
  sha256 "456df6bd508d5fa9fda74a852a2c39d21c77a5fdd8a9ad8413a2b464240ff042"
  version "0.5.0"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

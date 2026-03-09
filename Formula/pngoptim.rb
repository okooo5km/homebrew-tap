class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.3.0/pngoptim_0.3.0_darwin_universal.tar.gz"
  sha256 "3c2a103d26075e30f08fc754a64ef3a0713965c4d433e66e2088f4009d603e0b"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

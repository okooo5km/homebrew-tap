class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.6.0/pngoptim_0.6.0_darwin_universal.tar.gz"
  sha256 "11cf54168a648406cdf597ea54838517e4620214eef71019271363ab748b0bb0"
  version "0.6.0"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

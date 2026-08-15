class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.4/pngoptim_0.5.4_darwin_universal.tar.gz"
  sha256 "b2a63542d4fd386e1587c1b152070ff52c6aefe5930899e262c1d32431d03896"
  version "0.5.4"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

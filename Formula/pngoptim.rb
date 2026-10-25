class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.6/pngoptim_0.5.6_darwin_universal.tar.gz"
  sha256 "db994d2f0e6fb42eda23598e1a6692c6bb4983a0eae72a88bb871641e837b7b9"
  version "0.5.6"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

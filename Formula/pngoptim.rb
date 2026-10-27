class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.6.1/pngoptim_0.6.1_darwin_universal.tar.gz"
  sha256 "6d40d493aa2224f7166362ae76526af01431ae25d8c8206d6b42eda009e9e5ec"
  version "0.6.1"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

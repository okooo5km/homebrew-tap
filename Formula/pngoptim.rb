class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.4.0/pngoptim_0.4.0_darwin_universal.tar.gz"
  sha256 "ec6dc557aa1cb6045dc04edf511685292f1a444c6d0feb5c6b42d89834947598"
  version "0.4.0"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

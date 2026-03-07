class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.2.0/pngoptim_0.2.0_darwin_universal.tar.gz"
  sha256 "2b0c278697c3ffa12705507716b13fd7dd4e149fdf7b0caac3088bc63fb91ce6"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

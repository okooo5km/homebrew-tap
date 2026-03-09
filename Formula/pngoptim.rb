class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.2.2/pngoptim_0.2.2_darwin_universal.tar.gz"
  sha256 "733d795d92e6cbefd0be5756c5de2d30ce73cbea39a1a9179a0d5d1d5e59ccee"
  version "0.2.2"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

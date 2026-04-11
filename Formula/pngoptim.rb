class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.2/pngoptim_0.5.2_darwin_universal.tar.gz"
  sha256 "c7d2e1b8465745162518787d32dcb129e880ebfac0daa4a8a367bef49c0d06bc"
  version "0.5.2"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

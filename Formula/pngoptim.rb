class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.5/pngoptim_0.5.5_darwin_universal.tar.gz"
  sha256 "ffabaaa9861f051a68297bd6eb11b4b1fa954292257a75211ff6685bb3e42ef0"
  version "0.5.5"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

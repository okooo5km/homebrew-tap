class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.3/pngoptim_0.5.3_darwin_universal.tar.gz"
  sha256 "95fc6a3dce6730f3021dab54de85cea05adfac0718c7619da17455d685973110"
  version "0.5.3"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

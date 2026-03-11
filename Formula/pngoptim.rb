class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.4.1/pngoptim_0.4.1_darwin_universal.tar.gz"
  sha256 "ffdeb308b027e244431760feb133d016bf73efaae1442d082c7f164ffabc7f31"
  version "0.4.1"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

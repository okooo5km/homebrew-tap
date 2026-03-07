class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.2.1/pngoptim_0.2.1_darwin_universal.tar.gz"
  sha256 "c7942b9d5ee2057b66b002092ad6e2e457bf00993a66cfcc4cbbfa6dd93b7fb4"
  version "0.2.1"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

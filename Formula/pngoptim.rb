class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.1/pngoptim_0.5.1_darwin_universal.tar.gz"
  sha256 "49e726832ea950aaf389c01db432a1766cdd4e5a51ee53b132d229cfda84aa19"
  version "0.5.1"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.6.2/pngoptim_0.6.2_darwin_universal.tar.gz"
  sha256 "b3b909c343e37ee7b766b0be87c894c5425c125336cdfd2edd50a9cf5ae5e287"
  version "0.6.2"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

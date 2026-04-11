class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.5.3/pngoptim_0.5.3_darwin_universal.tar.gz"
  sha256 "8cf732c33429b640bf60a34369bf47a689785d3bd1ddd90d73e357bd8897c5b3"
  version "0.5.3"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

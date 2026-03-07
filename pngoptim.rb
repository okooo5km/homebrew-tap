class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v#{version}/pngoptim_#{version}_darwin_universal.tar.gz"
  sha256 "e91e68a1aacda234b71245e12c5e32a3e12c5c5a43124ad09d2982b5b76fc01f"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

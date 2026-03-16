class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.4.3/pngoptim_0.4.3_darwin_universal.tar.gz"
  sha256 "d9faaf6fbc4f7600aa91c34f1ce05a7e56b39131f651bd8fc9b0161f474793af"
  version "0.4.3"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

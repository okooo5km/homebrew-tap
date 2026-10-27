class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.6.3/pngoptim_0.6.3_darwin_universal.tar.gz"
  sha256 "6e56e67eb81a673fcb2803624835098c67c59a647799541b7196a872ac66c974"
  version "0.6.3"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

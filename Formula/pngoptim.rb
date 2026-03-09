class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.3.0/pngoptim_0.3.0_darwin_universal.tar.gz"
  sha256 "f13613bbaefd9ea8cca11a0d92f011f788fb30dc0ef5760cf0aa790a6b33e1dc"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

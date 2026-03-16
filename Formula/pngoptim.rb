class Pngoptim < Formula
  desc "Fast PNG quantization CLI tool — a Rust alternative to pngquant"
  homepage "https://github.com/okooo5km/pngoptim"
  url "https://github.com/okooo5km/pngoptim/releases/download/v0.4.2/pngoptim_0.4.2_darwin_universal.tar.gz"
  sha256 "de38932c03ae748a840b739e5143405fbbae79ec04744de83332eed765eb0f24"
  version "0.4.2"
  license "MIT"

  def install
    bin.install "pngoptim"
  end

  test do
    system bin/"pngoptim", "--version"
  end
end

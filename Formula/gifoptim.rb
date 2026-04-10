class Gifoptim < Formula
  desc "A pure Rust GIF optimization engine"
  homepage "https://github.com/okooo5km/gifoptim"
  url "https://github.com/okooo5km/gifoptim/releases/download/v0.1.0/gifoptim_0.1.0_darwin_universal.tar.gz"
  sha256 "1de8f5dd9901e3fed9365940c4f899da9596dc5ca93098cf6dd433be24386c34"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "gifoptim"
  end

  test do
    system bin/"gifoptim", "--version"
  end
end

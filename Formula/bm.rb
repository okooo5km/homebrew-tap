class Bm < Formula
  desc "Render Mermaid diagrams as beautiful SVG/PNG/ASCII from the command line"
  homepage "https://github.com/okooo5km/beautiful-mermaid-cli"
  url "https://registry.npmjs.org/beautiful-mermaid-cli/-/beautiful-mermaid-cli-0.2.4.tgz"
  sha256 "a8d193bb0be941aa565ea4c64d1eead9f1220eafbeddf17d278947c4420283af"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bm --version")
  end
end

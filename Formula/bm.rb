class Bm < Formula
  desc "Render Mermaid diagrams as beautiful SVG/PNG/ASCII from the command line"
  homepage "https://github.com/okooo5km/beautiful-mermaid-cli"
  url "https://registry.npmjs.org/beautiful-mermaid-cli/-/beautiful-mermaid-cli-0.2.1.tgz"
  sha256 "ed0cc9557ff81c5577eb2fe2e955c097dc4b0becccb48174080a87c57107bbbe"
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

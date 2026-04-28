class Bm < Formula
  desc "Render Mermaid diagrams as beautiful SVG/PNG/ASCII from the command line"
  homepage "https://github.com/okooo5km/beautiful-mermaid-cli"
  url "https://registry.npmjs.org/beautiful-mermaid-cli/-/beautiful-mermaid-cli-0.1.0.tgz"
  sha256 "0e6e6a5377c172a09c3c4bfa754aed6e600529b4df8b96a116f1580ae03e7bc6"
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

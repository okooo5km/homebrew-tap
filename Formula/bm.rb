class Bm < Formula
  desc "Render Mermaid diagrams as beautiful SVG/PNG/ASCII from the command line"
  homepage "https://github.com/okooo5km/beautiful-mermaid-cli"
  url "https://registry.npmjs.org/beautiful-mermaid-cli/-/beautiful-mermaid-cli-0.0.0.tgz"
  sha256 "0f5004fda1db3b00f17355de209cd93b9700100ed2957846c812d0c3bd8bfe79"
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

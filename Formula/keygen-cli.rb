class KeygenCli < Formula
  desc "AI-friendly CLI for keygen.sh — manage products, policies, licenses, machines, releases"
  homepage "https://github.com/okooo5km/keygen-cli"
  url "https://github.com/okooo5km/keygen-cli/releases/download/v0.1.2/keygen-cli_0.1.2_darwin_universal.tar.gz"
  sha256 "b47023292aeb1a544f8fec1ee133af40a9277633627d347ca40a04bf8a5f540c"
  version "0.1.2"
  license "MIT"

  def install
    bin.install "keygen"
    bin.install_symlink bin/"keygen" => "kg"
  end

  def caveats
    <<~EOS
      Run `keygen login` to authenticate, or set KEYGEN_TOKEN.
      Short alias: `kg` (symlink to `keygen`).
      Shell completion: `keygen completion zsh > ~/.zfunc/_keygen`
    EOS
  end

  test do
    assert_match "keygen", shell_output("#{bin}/keygen --version")
    assert_match "keygen", shell_output("#{bin}/kg --version")
  end
end

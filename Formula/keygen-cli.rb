class KeygenCli < Formula
  desc "AI-friendly CLI for keygen.sh — manage products, policies, licenses, machines, releases"
  homepage "https://github.com/okooo5km/keygen-cli"
  url "https://github.com/okooo5km/keygen-cli/releases/download/v0.3.0/keygen-cli_0.3.0_darwin_universal.tar.gz"
  sha256 "ea2ad515878c58b8898684b1db6389892d6a547a23f6e8be1a654f1aee8e7783"
  version "0.3.0"
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

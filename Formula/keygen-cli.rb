class KeygenCli < Formula
  desc "AI-friendly CLI for keygen.sh — manage products, policies, licenses, machines, releases"
  homepage "https://github.com/okooo5km/keygen-cli"
  url "https://github.com/okooo5km/keygen-cli/releases/download/v0.3.1/keygen-cli_0.3.1_darwin_universal.tar.gz"
  sha256 "42cadec0ade3e823c7b885b581cb22a0c4b1387294b74dc73fbb5d741daeba38"
  version "0.3.1"
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

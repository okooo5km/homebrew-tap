class KeygenCli < Formula
  desc "AI-friendly CLI for keygen.sh — manage products, policies, licenses, machines, releases"
  homepage "https://github.com/okooo5km/keygen-cli"
  url "https://github.com/okooo5km/keygen-cli/releases/download/v0.1.0/keygen-cli_0.1.0_darwin_universal.tar.gz"
  sha256 "de5957d9c86f8d21cac8ba19493fb29c8035cadd751b6e3f203526aeba4514cd"
  version "0.1.0"
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

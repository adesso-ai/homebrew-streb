# Homebrew formula for streb
#
# Installation:
#   brew tap adesso-ai/streb
#   brew install streb
#
# Auto-updated by GitHub Actions on each release.

class Streb < Formula
  desc "CLI tool for bootstrapping Claude Code development environments"
  homepage "https://strebcli.dev"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.0/streb_darwin_arm64.tar.gz"
      sha256 "edbca9e6f3ccd13af7d836972a93299b0370dd24bd7bda9ec3d5ab1cbcb69f5e"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.0/streb_darwin_amd64.tar.gz"
      sha256 "53e075803e6a06603b7d48bb383998f784be1b5c6631b342c5c2f58066b95b5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.0/streb_linux_amd64.tar.gz"
      sha256 "28919deac95619ae1be8781bf7105b816851effdd2032489747e39ad3e0c3320"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

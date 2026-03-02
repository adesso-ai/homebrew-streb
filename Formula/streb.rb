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
  version "0.9.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.15/streb_darwin_arm64.tar.gz"
      sha256 "8ddbf8ff7d13365ff9a624972c1d05c2a115d0a8df34b1c6533e622f7412881f"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.15/streb_darwin_amd64.tar.gz"
      sha256 "bc8d470095a9191fa3449b469dca8a754136f670995cab8f6504a23b74b8f0cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.15/streb_linux_amd64.tar.gz"
      sha256 "f556407cad2ba7207f4e02280c8c905a9efb7fab29b7e6d2982f5c806d4cca81"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

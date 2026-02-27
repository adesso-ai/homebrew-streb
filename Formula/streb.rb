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
  version "0.9.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.10/streb_darwin_arm64.tar.gz"
      sha256 "439d751358f9daa8e03b47ca9099315904baa8a38a8d482e8a2a11583f7f5415"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.10/streb_darwin_amd64.tar.gz"
      sha256 "037f63b75932c45410aa26a316b6c5b9b7a0ca3c85bfa4fad23123fcc2c19cc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.10/streb_linux_amd64.tar.gz"
      sha256 "e5743200a256bb52c8af672ab2971e146e2a1a10bc9f02cb4b471d34537a6b39"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

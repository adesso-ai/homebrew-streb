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
  version "0.9.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.5/streb_darwin_arm64.tar.gz"
      sha256 "d3cf92418af0e0363eb933a1997e962088204b4e30d95a0e8e642f9413cf7ac8"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.5/streb_darwin_amd64.tar.gz"
      sha256 "11725753f5e2316393a7ab9616e625399c6aa46f84593bd8ce771d644e69c937"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.5/streb_linux_amd64.tar.gz"
      sha256 "3a3614c427cab321f8cfb280c16ff69515da2fd782084c979a2e2fa9dfc52c31"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

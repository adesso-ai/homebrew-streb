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
  version "0.9.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.3/streb_darwin_arm64.tar.gz"
      sha256 "14a85ad6a2520f8ca1edad58214959d696feb2b8758fa896ea8b9ab10a081928"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.3/streb_darwin_amd64.tar.gz"
      sha256 "19eb412872d5014ae5781fbd20092f61b9baa35f25927e44677704134d0adf09"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.3/streb_linux_amd64.tar.gz"
      sha256 "b51871d0227ffa363fa0f34526da2d5c44f443b160f6ca4a59671172da9c0a6e"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

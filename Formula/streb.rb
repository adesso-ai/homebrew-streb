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
  version "0.9.21"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.21/streb_darwin_arm64.tar.gz"
      sha256 "6bd3607c5fd21fa788535689cfc1b4f1c1245d2cd2c36373f2ac5ac20e6af215"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.21/streb_darwin_amd64.tar.gz"
      sha256 "28f8f706751752da35257c07f123f88c659f27beab4b4edb2a7eed42519f2af3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.21/streb_linux_amd64.tar.gz"
      sha256 "ab06cca6407c6490de5550926ae53a2ac78b70775f70d1b965b00d669e9469e6"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

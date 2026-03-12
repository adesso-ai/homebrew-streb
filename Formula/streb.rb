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
  version "0.9.23"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.23/streb_darwin_arm64.tar.gz"
      sha256 "6fec86f3f59dab0c2af954e9be7ac23da6eee2eb034d8a5a55af48fa5e7de56b"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.23/streb_darwin_amd64.tar.gz"
      sha256 "748639d6cd356d6b076cb3ce6cf17dd9bcaefe604e4a3972a0f3278b9aca3ce5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.23/streb_linux_amd64.tar.gz"
      sha256 "17b45e3d3427ee37ae99efa9d06e3de07e999f9b98e70100bdf33e8bb51d0ba7"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

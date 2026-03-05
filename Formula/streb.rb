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
  version "0.9.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.18/streb_darwin_arm64.tar.gz"
      sha256 "f154fb1c06d7c66660c1f2762f9385bd9776ded29e95778c6a47055dc76a3bfd"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.18/streb_darwin_amd64.tar.gz"
      sha256 "4ca0f7efbe16f00a68cd176532bfba1b6144922943f8ca19450a6a07d716a227"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.18/streb_linux_amd64.tar.gz"
      sha256 "26a37d3e043463d6e4ba00f6bdab97f6ea76ee946c8998e8308be9be58b24c33"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

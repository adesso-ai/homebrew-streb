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
  version "0.9.33"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.33/streb_darwin_arm64.tar.gz"
      sha256 "776eb5ddccc534931ae72a01e82429de8ee88d29e4604ae68e5bdb6e9d8a8d11"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.33/streb_darwin_amd64.tar.gz"
      sha256 "7fdbe0a31b848d1c452609893adcf7b28614c94c57f76beb0583fc46539fec2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.33/streb_linux_amd64.tar.gz"
      sha256 "81f48bbac4d39c570b9ff8c49e88a1d281122e67c2f019519f7439730fdafc64"
    end
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.33/streb_linux_arm64.tar.gz"
      sha256 "329b47b991c5976b3df6be4127d1aa12eda985230a6467453eac4fb4d0987f7e"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

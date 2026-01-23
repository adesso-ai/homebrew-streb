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
  version "0.7.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.7/streb_darwin_arm64.tar.gz"
      sha256 "5a4e7f7416794468b4ed0063d8cc43cb4498161b67a76a3f12f76ce5960baee0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.7/streb_darwin_amd64.tar.gz"
      sha256 "896723bfbdadc2d5540daa3ccdebcf0ce19f66b59967efe6d374b3f9e8e4a1ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.7/streb_linux_amd64.tar.gz"
      sha256 "34c6414e8c31ee699541a43095cb4428d1fbfd94750c6cff526e24cbe8ff5c8c"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

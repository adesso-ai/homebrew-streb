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
  version "0.7.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.1/streb_darwin_arm64.tar.gz"
      sha256 "d19055735edd8eb3eb2bd8f072ff173375e0b2a6bd3362300e66468ac8a7947c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.1/streb_darwin_amd64.tar.gz"
      sha256 "eaffadae599a72faed632def24f7c56f0b457e0b99c793aa30fcf722bd054114"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.1/streb_linux_amd64.tar.gz"
      sha256 "8c9ec6a274a2bb4e16cf258c41d6de85430bf16202bef2bbba4141b87b47477e"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

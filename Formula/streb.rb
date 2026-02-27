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
  version "0.9.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.6/streb_darwin_arm64.tar.gz"
      sha256 "761c262b3ea6276384ad7121d991980b79102f5311a64fd41424f535368162ea"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.6/streb_darwin_amd64.tar.gz"
      sha256 "55fb196032821d4dfb580e471b6ce7076d0ec811521a4c5f5f18aa0a4a896477"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.6/streb_linux_amd64.tar.gz"
      sha256 "cb6e96da5c109c9eb3791cf4e44d178af96c5adb152ec8a78ce0c9dab19de4bf"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

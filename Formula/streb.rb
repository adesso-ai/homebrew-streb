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
  version "0.9.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.12/streb_darwin_arm64.tar.gz"
      sha256 "347594b2265847e54c1b2021220391b485851bff5ec1b7eb5c857f321552d860"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.12/streb_darwin_amd64.tar.gz"
      sha256 "b499fccd5191a2c0a78cc57a0500749192499fd2ec29af5f0cf6b10e621841a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.12/streb_linux_amd64.tar.gz"
      sha256 "a007586c2047feb1ea31e84bbab449db36c918797f2c42178679de9f30b04865"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.9.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.16/streb_darwin_arm64.tar.gz"
      sha256 "34d04c030b305c273dbe2a59a0c20e2b744b2d52ceae0a189bb5687fe147728c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.16/streb_darwin_amd64.tar.gz"
      sha256 "edf1ff852da412bf0aad9c9d64786cb9f02f36335d7cccdd51b7c3fe08e6c59a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.16/streb_linux_amd64.tar.gz"
      sha256 "ca1b3807170c9bf81178e7dd31330f624a5d71156930655378d0a62bf4e7ef5b"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

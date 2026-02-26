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
  version "0.9.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.4/streb_darwin_arm64.tar.gz"
      sha256 "b898258ee92dfa050229d09012ed62a10a8db9a0906934092254e643ddbe9209"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.4/streb_darwin_amd64.tar.gz"
      sha256 "17af2293593c6c0a67c8f7fa0ca3078f305b4cf0db5b9ace104c2bc2252eba51"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.4/streb_linux_amd64.tar.gz"
      sha256 "8e44bea159fe5e4cfbce342972458a1e287365defc1de92ee6dece04a09db2e1"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

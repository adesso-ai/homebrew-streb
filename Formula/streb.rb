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
  version "0.9.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.0/streb_darwin_arm64.tar.gz"
      sha256 "4490da1bceab4624200e2993116a08f98eb579d03e5484fd3ccfeaa6a26244a5"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.0/streb_darwin_amd64.tar.gz"
      sha256 "5a6157b76a24b6dacfce1b6439c57998b7328dd10dab954b436956d2c2733f5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.0/streb_linux_amd64.tar.gz"
      sha256 "493d02c01a6874b83249d33b597f8dd21c1dd614850323850d7f8a6824aa52ba"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

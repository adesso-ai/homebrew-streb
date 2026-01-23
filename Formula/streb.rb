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
  version "0.7.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.9/streb_darwin_arm64.tar.gz"
      sha256 "1dc518f4afec38c4629d757d3cb3f458336b19293aa8e1e8884d046a105c7a06"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.9/streb_darwin_amd64.tar.gz"
      sha256 "531a3c610b8b52a7d9ed4d13b80250183b525434160f6067ec371f6bf9b66b47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.9/streb_linux_amd64.tar.gz"
      sha256 "786815470cc3474e98307538f512163e6b6f5a456db40405e1aec76dad24a727"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

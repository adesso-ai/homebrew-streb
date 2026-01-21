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
  version "0.6.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.6/streb_darwin_arm64.tar.gz"
      sha256 "8c7b2d621d98c212e7c669c451ff06c60d83a316a4847bc089a5cffd9f269dc0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.6/streb_darwin_amd64.tar.gz"
      sha256 "a4f91246d081aeb68786b79a2ed1bee88701851d05e881b09d3778fb23b53dff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.6/streb_linux_amd64.tar.gz"
      sha256 "1e6aad74d16874ebfa0fe6a32fd2f57a48ddcedecf99f6a3251017ab94d2f0c8"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

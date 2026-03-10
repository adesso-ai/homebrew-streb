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
  version "0.9.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_darwin_arm64.tar.gz"
      sha256 "2cf0496ddc1b273e9496f594b857eaa99bbf00eca219d008fd48157f42642e64"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_darwin_amd64.tar.gz"
      sha256 "537923e591b7460c78ad677883c7c23cb57c2622c0b663bbcddd29a126002feb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_linux_amd64.tar.gz"
      sha256 "5d830c83221d87535e828d551be553d065205a01f33832c04d8221efdbea712d"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.7.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.5/streb_darwin_arm64.tar.gz"
      sha256 "67f853e648f211dd8899039c08a4a55be61799faafc87b63eb800d01b4cdbc88"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.5/streb_darwin_amd64.tar.gz"
      sha256 "57551d3ee452981edeecde8f09e0b35196e89d959ecb30a259ffd50271450446"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.5/streb_linux_amd64.tar.gz"
      sha256 "95e128757bc3a05389b48aa565a8edd388370725f27b1107ae98e586a01a90fb"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

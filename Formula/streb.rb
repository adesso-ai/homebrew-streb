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
  version "0.9.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.9/streb_darwin_arm64.tar.gz"
      sha256 "220c1903a596e76947a444f335c405485de7573150b20cea5a30cea44a6ff3af"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.9/streb_darwin_amd64.tar.gz"
      sha256 "34bdac05ea31731f30196d7075bd64b3eefa6bce0b5d361f6a1f537df90ebf2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.9/streb_linux_amd64.tar.gz"
      sha256 "d40cd973e2222c30fbf982e406e7393476e4ce111e5cac7f1cdaefc80c004a1f"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

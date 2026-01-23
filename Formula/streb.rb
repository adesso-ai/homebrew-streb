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
  version "0.7.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.12/streb_darwin_arm64.tar.gz"
      sha256 "a6d951a4a01e3284153db9468d08604197ba4be4338be9619472ba8aa75761c7"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.12/streb_darwin_amd64.tar.gz"
      sha256 "90dcc6140afa5095a4c2a2fdab5b0a303b0308827a87484b7110c438a7e367b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.12/streb_linux_amd64.tar.gz"
      sha256 "10d13a487a61b47f6385d04ab05a7872e4a22a64e8b3d9a5bd897def52d0dffe"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

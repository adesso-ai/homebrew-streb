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
  version "0.7.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.6/streb_darwin_arm64.tar.gz"
      sha256 "47f3cc44c3166f37aa74100eb89cd41407d5dde3661a627b46a4e806d88ff1fb"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.6/streb_darwin_amd64.tar.gz"
      sha256 "528ae451fa4095327bcac1921f7ec115531b62861b85c9d7e6d03d9b213568c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.6/streb_linux_amd64.tar.gz"
      sha256 "5bc74978e1703f0f20d6a4f40a6b07e511fe0591940d01d6a3cf95b5022b3d5e"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

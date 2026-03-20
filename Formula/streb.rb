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
  version "0.9.28"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.28/streb_darwin_arm64.tar.gz"
      sha256 "46f698b2f25822481858e3a6c40d5b05b7885eed3603546eed032f97327366d6"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.28/streb_darwin_amd64.tar.gz"
      sha256 "388572f3c6ee33d864781df154ce96798ee13cbfa22c001b1a46586e2cf6aba0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.28/streb_linux_amd64.tar.gz"
      sha256 "ebc9496766022ac574a533ad98992969f54852705622da530ed87087ea14af86"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

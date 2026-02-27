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
  version "0.9.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.11/streb_darwin_arm64.tar.gz"
      sha256 "462a7387cb09a75fa7d7cc581684c9756a9e11242f94c79e908fd7a51cf14e1f"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.11/streb_darwin_amd64.tar.gz"
      sha256 "b6f2b293ca3e003ab164d803049ca41c8d93575f3704286425f8a01e9e5c2ce0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.11/streb_linux_amd64.tar.gz"
      sha256 "8f7bacc2d97975259aecfa1c0a0297ed8929294fbdc35d4a809c450c9d922b03"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

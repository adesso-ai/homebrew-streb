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
  version "0.9.22"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.22/streb_darwin_arm64.tar.gz"
      sha256 "259488ee62d838d8f7e2591d9a729757310f7d9da6ff6d45a1de2793fd0f88d0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.22/streb_darwin_amd64.tar.gz"
      sha256 "e85e0f522e64931126fcea0a27e2666fce6fadffe5e219bf4ade1ae7b85b0d40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.22/streb_linux_amd64.tar.gz"
      sha256 "009c82742fbaa64521f7d1d77b9fcf9b5754e762795844940ccd9116acbf52a7"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

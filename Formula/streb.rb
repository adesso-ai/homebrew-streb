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
      sha256 "72cfcc0c934490bd6e4c4255a3b75501ced3f7ed0ad56e1eba8900bc2e50340f"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.11/streb_darwin_amd64.tar.gz"
      sha256 "a87412756a0d150a98d0ab5ebbfee9bb4683c1ee23a9d9cdb9f1dafe77d2943a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.11/streb_linux_amd64.tar.gz"
      sha256 "18016f0ca815fa04de1f8c210e936d158fccfba4f37bb3b726e53e4874264274"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

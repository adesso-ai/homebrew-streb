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
  version "0.6.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.8/streb_darwin_arm64.tar.gz"
      sha256 "93cdd2c4b89999aaace1d5cfa82e33805e62d1229a0e73d661b1fae981d97914"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.8/streb_darwin_amd64.tar.gz"
      sha256 "d6c0441ea3fb2ac267f14c367126c0a63859036aa14fd55f92f635a54235a941"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.8/streb_linux_amd64.tar.gz"
      sha256 "848ca8623bd213fac3c523f972f708221649b1df5ec4cbd432d9104f23dc2dd6"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

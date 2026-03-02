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
  version "0.9.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.16/streb_darwin_arm64.tar.gz"
      sha256 "44a554ef52bfd5b1dfb6714b45a8432589fbd768949e67a658ba22ca5d585e5e"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.16/streb_darwin_amd64.tar.gz"
      sha256 "dbfdf1d141ca470c334f8913e92e83f7606be7b5986c5e909c84f07519203652"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.16/streb_linux_amd64.tar.gz"
      sha256 "9296946b0d4174868fdccb563f29b8b907b6c42d49f26fbc736e471b707036db"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.7.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.16/streb_darwin_arm64.tar.gz"
      sha256 "ce13df686d53203959a314695ec4975e7a255b1fb84b556c758097d6ba2dd430"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.16/streb_darwin_amd64.tar.gz"
      sha256 "94dfed5bda3a83410b64a04a627c990cdc2a60af49074e1d435cbddf1369f38e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.16/streb_linux_amd64.tar.gz"
      sha256 "578f0198b40d8cffc90218a681716f835d4c8722684a2a0561bd99e1ed36f6f0"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

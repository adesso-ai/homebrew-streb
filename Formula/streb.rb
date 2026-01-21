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
  version "0.6.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.5/streb_darwin_arm64.tar.gz"
      sha256 "acc26cc9055165963d66168d82bd0a71f198c4e8f185c874197f88a11ab510c0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.5/streb_darwin_amd64.tar.gz"
      sha256 "8eb1d5ce32fd859f8342e0e26848fd397463d8a13c5744284bb3178dfae78e88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.5/streb_linux_amd64.tar.gz"
      sha256 "7cf37a006ed9449732edc8b0a3034e055407c83155e67f2ef535f24ed5ad7f1e"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

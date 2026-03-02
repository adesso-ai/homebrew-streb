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
  version "0.9.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.17/streb_darwin_arm64.tar.gz"
      sha256 "3845b60a90342bc5654f7f811b7287ca27215546a71b31fef6ddd820a454a05d"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.17/streb_darwin_amd64.tar.gz"
      sha256 "5207e03d565f77fddef3617d9d3ddd90c67747ea7a320a3e5c5f35c59350747e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.17/streb_linux_amd64.tar.gz"
      sha256 "5b8c1a1e70a0eadcaa3139da043bc741881cce5b41713418a88064da67af0fbd"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.9.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_darwin_arm64.tar.gz"
      sha256 "1539030702795678a7ee3a69cb49ac6b3dcde5624a89f9cdc6e7ee37babee388"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_darwin_amd64.tar.gz"
      sha256 "19b23fd4d0f311ac1caadc24ead6221ea50a91468dfa7c0c1fef25c6975646d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_linux_amd64.tar.gz"
      sha256 "9f6ac76b0ae9abb524cb4554e1871ab6577c1e7eaad4bedad65ffe3d3c33e89c"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

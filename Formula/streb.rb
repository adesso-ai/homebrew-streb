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
  version "0.6.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.7/streb_darwin_arm64.tar.gz"
      sha256 "af2986e7c4926e75f18b3875c1d9d622f50cea7ede17ff08b980bf8e228a6a14"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.7/streb_darwin_amd64.tar.gz"
      sha256 "401e803fbe9cdc51dcd49049f841d835a0a7aec5ee8d73f3b4d50cda5cfd6a84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.7/streb_linux_amd64.tar.gz"
      sha256 "4be07bbd3a6959d6efecb5b2ad687ddd3ac9c07ef7929d819fea8fba8f934944"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

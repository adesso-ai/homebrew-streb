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
  version "0.7.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.0/streb_darwin_arm64.tar.gz"
      sha256 "448eba192feea370820628ac499e7e00bf0bf26d062d39ee7deff27e6ae8c529"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.0/streb_darwin_amd64.tar.gz"
      sha256 "6d7b74216c4a8506104e3586b360cf006a1921f1fab737de84474397c9ab9c36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.0/streb_linux_amd64.tar.gz"
      sha256 "f2f96dd4e9c9c4f22cf8e799c567493e40b54897a2bba973444c76c8b13fb2fb"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

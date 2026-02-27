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
  version "0.9.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.9/streb_darwin_arm64.tar.gz"
      sha256 "faa62e6b26dc7f1ff2776021e12a6c542d2e89afe7f7ff957f05202bb8e32ddf"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.9/streb_darwin_amd64.tar.gz"
      sha256 "bf1c3d827ea1c9fe9d92daad335a3a415a45e554d7bf5bc19df97016118fbde2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.9/streb_linux_amd64.tar.gz"
      sha256 "49d6e3342fa17ff224c1a24c8e6926ccae2e0b5767b1cbc34b11e7027e16abf1"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

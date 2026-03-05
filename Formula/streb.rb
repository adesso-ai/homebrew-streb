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
  version "0.9.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.18/streb_darwin_arm64.tar.gz"
      sha256 "4032ca951c9a4634db90e3d54707551edaa770a8475d2ecef1d2d18eb39289cd"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.18/streb_darwin_amd64.tar.gz"
      sha256 "0e5b29e84eaf819ffb8e22301443ea7426e558cdabea48aa0c794497ee32d2b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.18/streb_linux_amd64.tar.gz"
      sha256 "68266e77d5c982e2dc704eb2b266699e83b44d2b51f120b68f9484a4b044cf08"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

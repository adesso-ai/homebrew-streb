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
      sha256 "a511b1deb341f0f9b7b6cf65c681dd545ee5b828effbe32426dd1817055472e3"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.17/streb_darwin_amd64.tar.gz"
      sha256 "10685ac4362e19d061d18ee3538d3c6f9c3b32adff764e4c785a33341d978a8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.17/streb_linux_amd64.tar.gz"
      sha256 "466082c3cd632c8ecdc0020391c8821c69138fd835fce1f401157169be47c65a"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

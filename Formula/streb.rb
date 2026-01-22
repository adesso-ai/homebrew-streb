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
  version "0.7.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.2/streb_darwin_arm64.tar.gz"
      sha256 "9b252dad13d8e35acbd4293ebe3109c9365605afb915cabcac7f1c94ed1cb6d0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.2/streb_darwin_amd64.tar.gz"
      sha256 "c76ceb408f8ca6dcce93332ada0d568f6d1e09884cf6a555a4eab04bdf8f2d56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.2/streb_linux_amd64.tar.gz"
      sha256 "2abe9665e912221c2c03b552ab01243984afdb6a791d84160956021aa17a2da4"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

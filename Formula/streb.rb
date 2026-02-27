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
  version "0.9.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.8/streb_darwin_arm64.tar.gz"
      sha256 "16f7d2aac7a5c170349b99bfdaa566298789e64932cab5a50ad6a981898026ea"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.8/streb_darwin_amd64.tar.gz"
      sha256 "505e966fefe2c8b59c2adaae4f37751d115584b5b2e436f7fdc6747b338927c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.8/streb_linux_amd64.tar.gz"
      sha256 "6186e2ba9b255351c28688a2d3da08e2d7c51127ca66d43e90f89a477b75ace8"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

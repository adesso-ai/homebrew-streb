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
  version "0.9.31"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.31/streb_darwin_arm64.tar.gz"
      sha256 "0dec098614493013910964cba4e91a67fe3eec18b8b96fe90225acf6056a8e73"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.31/streb_darwin_amd64.tar.gz"
      sha256 "e5634ea255ebb707f4e00c6ab0a60c50567616f612893f13beb32e6112ff68df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.31/streb_linux_amd64.tar.gz"
      sha256 "9cde95a14de80f8ca79bcf3f4ce5828725334c8f37dd732fa3b140e3c758b27a"
    end
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.31/streb_linux_arm64.tar.gz"
      sha256 "d7453e5704fba50dae3880b879058ed07a488c00887e0d2ed328543fe225eb08"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

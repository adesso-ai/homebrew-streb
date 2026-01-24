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
  version "0.7.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.18/streb_darwin_arm64.tar.gz"
      sha256 "d48767865477ab13ce83aa48dae72265ada5d51d9703bdb8caa38b97f721601a"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.18/streb_darwin_amd64.tar.gz"
      sha256 "3ab572f24ec20efb247c566554c3f00385c7dbba4d84563e21cacdc0471ab71b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.18/streb_linux_amd64.tar.gz"
      sha256 "9356ac7ccd8a5eb910d2802f30935ccf46516b57b8e217915e751e33cd6c6bc4"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.9.27"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.27/streb_darwin_arm64.tar.gz"
      sha256 "8d472f190ca69441bd067e9bf035b826e4053bf1fafedd07ab8eead2543d7033"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.27/streb_darwin_amd64.tar.gz"
      sha256 "8e18dad1476b993b8fe36fd5e36852d0e09f719b0c3ee2455ce3b1ccb28e6d95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.27/streb_linux_amd64.tar.gz"
      sha256 "6c6192bf134ceca77cce5900d18b9de75d02225cae7e5c673419f26c90ba4713"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

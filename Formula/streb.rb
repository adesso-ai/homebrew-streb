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
  version "0.9.29"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.29/streb_darwin_arm64.tar.gz"
      sha256 "a34897cbf4a58324f79ff7b5b02e1a8eb9bf7e837ff13eaa2d33b646359c8a14"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.29/streb_darwin_amd64.tar.gz"
      sha256 "c0fe17d87bfc3abe16c46966c61460fe93f2dac319fcde22c406102450f99993"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.29/streb_linux_amd64.tar.gz"
      sha256 "67d5fa1908964423e49703c76398193f556ff1f2c4c3e3d9e978960705adac85"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

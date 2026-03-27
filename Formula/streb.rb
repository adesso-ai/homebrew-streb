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
  version "0.9.32"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.32/streb_darwin_arm64.tar.gz"
      sha256 "5e15c467ccc8813a3bca086e14eca4c2fc1bf6bd147d661256a2373330c17630"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.32/streb_darwin_amd64.tar.gz"
      sha256 "2c5ed2125a444e0896ff1217c031c848e85e2b30e2e1c8f61547da17f7677fc2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.32/streb_linux_amd64.tar.gz"
      sha256 "ceff050ab09a6539c2a378125f8e45da67029b6790a1f7c542ac512cf3220a3a"
    end
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.32/streb_linux_arm64.tar.gz"
      sha256 "8a93a9b3dc80ad3d35c47a27f64c57e16bd68229db81a86afc2181fdb1b6e903"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.8.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.8.0/streb_darwin_arm64.tar.gz"
      sha256 "a7f81bc0ef929e24ae95ab08d054f39a9d659dba48b18f37f3c626d29a32917c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.8.0/streb_darwin_amd64.tar.gz"
      sha256 "227573732fa20239a441d19f5708bf910f3b133db258302bb017fb67b54b6dcc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.8.0/streb_linux_amd64.tar.gz"
      sha256 "a63b12b21940daac2cb1e3aad2ba6eafbb0d125160c84b09992f508ffd8b98f0"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

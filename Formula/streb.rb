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
  version "0.9.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_darwin_arm64.tar.gz"
      sha256 "87c441a49b1a460bf8dcd39bf80f3127d908a64bb7fd5bfa531dda43c015e45c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_darwin_amd64.tar.gz"
      sha256 "3650bc0188492155b578e0e9edc38a387fa073c02ecc569fd2495fea74fa23a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.20/streb_linux_amd64.tar.gz"
      sha256 "d793d3d57461be2a8f8f0a6d1dce2887fb2b5117d6160f27364061c20584ad02"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

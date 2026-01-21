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
  version "0.6.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.3/streb_darwin_arm64.tar.gz"
      sha256 "c5be0a620b7b829b63b62d4934e9396319d8f6f884f1ac11f5c474fa2c3a0fbd"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.3/streb_darwin_amd64.tar.gz"
      sha256 "5680daf181c8d7459ddb52807ada7c800ad01433937fffac9e8ab37d9a508d5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.3/streb_linux_amd64.tar.gz"
      sha256 "e95c14137bf3fc29cbcd5f03c5b33377df5cd1921db2a22d6eb1dce2f6c5a0f2"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

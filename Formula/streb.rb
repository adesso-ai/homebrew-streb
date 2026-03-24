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
  version "0.9.30"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.30/streb_darwin_arm64.tar.gz"
      sha256 "825dab489a96ae1d0a3f65f382626d12d432e38b486525c7ea45d59afa02e727"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.30/streb_darwin_amd64.tar.gz"
      sha256 "13cae3e8805e47d20d31a64d4408f75913c98f52c204ee24e08aaf584df5e10c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.30/streb_linux_amd64.tar.gz"
      sha256 "1861a66d9c0cd5a07f0a704228066ad0d96a7a2a0fe1758bfc5dc461f3756671"
    end
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.30/streb_linux_arm64.tar.gz"
      sha256 "01ce690fe7a1f5a9d19c2663e32db3f559e8d647aa8ef551213fc5d0d151b086"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

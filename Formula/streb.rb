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
  version "0.7.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.7/streb_darwin_arm64.tar.gz"
      sha256 "5c2ebe4630af744727cde5263a52be26011d6ee65e19ba493acd8f955e921fea"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.7/streb_darwin_amd64.tar.gz"
      sha256 "b283bf93513d40354b4ab7782a034bdc5dcddd46f955f769b36b3d7c8b28ebd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.7/streb_linux_amd64.tar.gz"
      sha256 "fcad25231fb4058ecd8352e795634a2f4edbae5d81341e2e5193686870b6925c"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

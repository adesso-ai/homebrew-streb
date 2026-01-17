# Homebrew formula for streb
#
# Installation:
#   brew tap StefanTrockel/streb https://github.com/StefanTrockel/streb
#   brew install streb
#
# Auto-updated by GitLab CI/CD on each release.

class Streb < Formula
  desc "CLI tool for bootstrapping Claude Code development environments"
  homepage "https://github.com/StefanTrockel/streb"
  version "0.5.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/StefanTrockel/streb/releases/download/v0.5.3/streb_darwin_arm64.tar.gz"
      sha256 "ce933295ce90d0a713c3c488832c0a27f2ef4aacb13e18105a86b276b65be94d"
    end
    on_intel do
      url "https://github.com/StefanTrockel/streb/releases/download/v0.5.3/streb_darwin_amd64.tar.gz"
      sha256 "41a71ccab97cc560a2e6bf52e48db14683c8d132f2106c820a084d9f563a52e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/StefanTrockel/streb/releases/download/v0.5.3/streb_linux_amd64.tar.gz"
      sha256 "d8c5cebc05c33bb6d483fd4bec724feb4ea81097c1d499680952f17d9825a382"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

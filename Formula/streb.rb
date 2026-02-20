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
  version "0.9.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.2/streb_darwin_arm64.tar.gz"
      sha256 "e8179bbce49a41405a0925d03f120845d0b600c4513c69796c1d4df5e8047278"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.2/streb_darwin_amd64.tar.gz"
      sha256 "f2c451dee788e42abb059761a300ef5d1f4441be43a25df638762f78e8a1a444"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.2/streb_linux_amd64.tar.gz"
      sha256 "1d653a2d257fcee497e50d93a3810985442b1e738a82667d1138c17241c8eb79"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.5.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/StefanTrockel/streb/releases/download/v0.5.4/streb_darwin_arm64.tar.gz"
      sha256 "04e7be8ffbe9e6a82fb2a027e4bb1142517eae866a40292fefc97c4a43e0bd7b"
    end
    on_intel do
      url "https://github.com/StefanTrockel/streb/releases/download/v0.5.4/streb_darwin_amd64.tar.gz"
      sha256 "70c047fd978e6b624350af520f61f3e8bb8898e9f196f322729a884b0af574ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/StefanTrockel/streb/releases/download/v0.5.4/streb_linux_amd64.tar.gz"
      sha256 "49523ee5b4be6ff3a55a2cdf4e27fecd14ad086c35b6a9e1d6e37823739c4f60"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

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
  version "0.6.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.1/streb_darwin_arm64.tar.gz"
      sha256 "20e5b8f9220907f67e807a40128ca6b003926387bcce2c946cf47e94df9a232c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.1/streb_darwin_amd64.tar.gz"
      sha256 "ef6aa45905686ed083b64c56085338728bd2401d78e8be49cd656da89d9e7ac2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.1/streb_linux_amd64.tar.gz"
      sha256 "1007638c65929a13ffa572a35130ea9d60d9932e5ddfe96c431bcb9c0c4a3514"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

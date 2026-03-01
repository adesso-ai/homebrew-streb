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
  version "0.9.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.13/streb_darwin_arm64.tar.gz"
      sha256 "4da784f0a353f83b641bb078267bcb994f869fe9bf31679d50ce85d159afbb60"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.13/streb_darwin_amd64.tar.gz"
      sha256 "5256ea880dd5ae52bcc9e3fc357ebbd59dcf48a697899eb634138ca351c9af24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.13/streb_linux_amd64.tar.gz"
      sha256 "b2141e51456ccc2a8636f13ca21dbf7f8b194bd9a19f444c8a002a86ff65f433"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

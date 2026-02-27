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
  version "0.9.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.7/streb_darwin_arm64.tar.gz"
      sha256 "7508bfa3a0ea680fb46d39f6b7347b2dcc2fd9e8bca33e5e0f689ad6045f9185"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.7/streb_darwin_amd64.tar.gz"
      sha256 "5178228d6f9c3de118c6b9b2d2af2a57f6653302a4ddd3780842a08862df85f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.7/streb_linux_amd64.tar.gz"
      sha256 "2aff19381bb3e852d9bba7fbd03b8c0650d7cb51cb069ec2491389f069d22c81"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

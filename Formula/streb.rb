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
  version "0.9.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.14/streb_darwin_arm64.tar.gz"
      sha256 "f97e2a8c5a9e52fee645be52fcc38dd2fa5288fecc10961e9862074dfb960b58"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.14/streb_darwin_amd64.tar.gz"
      sha256 "c63e6c639f4e79e86c6c6ef431f4e97b0ffbb25f501b4a55a6b503cf973d453a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.14/streb_linux_amd64.tar.gz"
      sha256 "b923351876b608b34d5119a76881e81f9296c1586a42b8c85f2cc0f164473856"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

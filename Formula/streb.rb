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
  version "0.9.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.15/streb_darwin_arm64.tar.gz"
      sha256 "0cf06500d0187eef43c5630405e09384bb42570f55f2daf9f938df22eb42a98e"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.15/streb_darwin_amd64.tar.gz"
      sha256 "121c9a8613bfdaac08c51858b0a811814206443d86a3e3ec4057e70b0d81019c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.15/streb_linux_amd64.tar.gz"
      sha256 "a4506a9dc13fdbb97a68a9e21d1162bf0ec2074cf4e86db5355208f376a39a10"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

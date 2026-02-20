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
  version "0.9.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.1/streb_darwin_arm64.tar.gz"
      sha256 "602dbf098e28cd2a5a3b2302422e9f6d2982035c3043443e699440d45450732a"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.1/streb_darwin_amd64.tar.gz"
      sha256 "8488454998f1163fc794e6869f327af8fa9e8b5462e7274aae7fad2bf82d4c48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.9.1/streb_linux_amd64.tar.gz"
      sha256 "fa0602453ba9012215a1e115558bcc008259bcdd49b55fc8cebbf25b07e29508"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end

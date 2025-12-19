class Neatcli < Formula
  desc "A smart CLI tool to organize and clean up messy directories"
  homepage "https://github.com/patchybean/neat"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patchybean/neat/releases/download/v#{version}/neatcli-aarch64-apple-darwin.tar.gz"
      sha256 "bcf45dfab0fb4142366d38138983410f7d5aeb2c6bcad408580edaf816a1164e"
    else
      url "https://github.com/patchybean/neat/releases/download/v#{version}/neatcli-x86_64-apple-darwin.tar.gz"
      sha256 "44c9474bd4fefc8d9d6dc903c2f2ab5f9ebd6fa7468a671e261c67561ae6a4ef"
    end
  end

  on_linux do
    url "https://github.com/patchybean/neat/releases/download/v#{version}/neatcli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6b5a66f54738cf987109ea4e3ad8ed05f8cb9573a8079b12dc5b410998c64861"
  end

  def install
    bin.install "neatcli"
  end

  test do
    system "#{bin}/neatcli", "--version"
  end
end

class Neatcli < Formula
  desc "A smart CLI tool to organize and clean up messy directories"
  homepage "https://github.com/patchybean/neatcli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patchybean/neatcli/releases/download/v#{version}/neatcli-aarch64-apple-darwin.tar.gz"
      sha256 "e5b74f00fa643ed825268b1cb2eb4c0d9ff2e3e134d15e7efeb5f15292f3720c"
    else
      url "https://github.com/patchybean/neatcli/releases/download/v#{version}/neatcli-x86_64-apple-darwin.tar.gz"
      sha256 "aa5addbef0196ba9175aeb17f667da78869fd23340c4d42d107d15052ae65a3d"
    end
  end

  on_linux do
    url "https://github.com/patchybean/neatcli/releases/download/v#{version}/neatcli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "24e253bf7ff3a3c8b074db54f8a16458a6c00f5f47357a069a37d11dda4ebfe5"
  end

  def install
    bin.install "neatcli"
  end

  test do
    system "#{bin}/neatcli", "--version"
  end
end

class Neatcli < Formula
  desc "A smart CLI tool to organize and clean up messy directories"
  homepage "https://github.com/patchybean/neat"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patchybean/neat/releases/download/v#{version}/neatcli-aarch64-apple-darwin.tar.gz"
      sha256 "04582f3c3b6e45968a814d192666e9571724e03edc5176dd5cf0b48507967ea0"
    else
      url "https://github.com/patchybean/neat/releases/download/v#{version}/neatcli-x86_64-apple-darwin.tar.gz"
      sha256 "d7569f038d246166be386b3d3a9b1bf166aeafd9222409fdb068ff535ebb70da"
    end
  end

  on_linux do
    url "https://github.com/patchybean/neat/releases/download/v#{version}/neatcli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f2a1404857dbeb96ceb42bdeaad66c7c4dea9bae86b9b9044fe4b73475ab3624"
  end

  def install
    bin.install "neatcli"
  end

  test do
    system "#{bin}/neatcli", "--version"
  end
end

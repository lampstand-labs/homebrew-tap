# typed: false
# frozen_string_literal: true

class Mobiterm < Formula
  desc "A mobile-first web terminal for remote access from any device."
  homepage "https://github.com/lampstand-labs/mobiterm"
  version "0.2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.0/mobiterm-darwin-x64.tar.gz"
      sha256 "9a87bc69a8b4eb24981b25606bc7239366eb6be2796425b0f7776ca3768ad511"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.0/mobiterm-darwin-arm64.tar.gz"
      sha256 "074f9138ee1e817e7d190a9876ce7abd1f0f3579781d3a7da523326b8e6693bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.0/mobiterm-linux-x64-gnu.tar.gz"
      sha256 "03b2681f4ae49e865efb76616443139ac480de438b0133b649dfc7ecfb6e2b4c"
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.0/mobiterm-linux-arm64-gnu.tar.gz"
      sha256 "bc89664d7210b9d842e5e6cb2132f173b37b227833f041090d07c60e5f365dda"
    end
  end

  def install
    bin.install "mobiterm"
  end
end

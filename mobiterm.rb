# typed: false
# frozen_string_literal: true

class Mobiterm < Formula
  desc "A mobile-first web terminal for remote access from any device."
  homepage "https://github.com/lampstand-labs/mobiterm"
  version "0.1.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.1.0/mobiterm-darwin-x64.tar.gz"
      sha256 "4722c1516f52d8aef2421e532cfe4b8c1f588d8da34a6ce79473eb93d107128a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.1.0/mobiterm-darwin-arm64.tar.gz"
      sha256 "80a1aa350b8cff8c23117ec3ceadb3fe17bbd2520ca61981ec960f787b9c85d1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.1.0/mobiterm-linux-x64-gnu.tar.gz"
      sha256 "9502f89d023b23da130c85405a3a204ca41c8574dccd0a85ce9f96e7e605d0b8"
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.1.0/mobiterm-linux-arm64-gnu.tar.gz"
      sha256 "00cfb7083d0b882acd1c90664113a5e2b6c54d09122e304746f318a5abcdcc2f"
    end
  end

  def install
    bin.install "mobiterm"
  end
end

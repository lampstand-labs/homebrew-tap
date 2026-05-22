# typed: false
# frozen_string_literal: true

class Mobiterm < Formula
  desc "A mobile-first web terminal for remote access from any device."
  homepage "https://github.com/lampstand-labs/mobiterm"
  version "0.2.1"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.1/mobiterm-darwin-x64.tar.gz"
      sha256 "4f1946a51625e403636594761c52eff5938f6fd13a3bffa2ec35f800398da715"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.1/mobiterm-darwin-arm64.tar.gz"
      sha256 "65f6e97e175283e8c348044e31d22122ec251f527ac54ed138a768ba2fced354"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.1/mobiterm-linux-x64-gnu.tar.gz"
      sha256 "f9d14cdb7b4bc7653b24e749ef95756e10fd3da79ffdbed36069db6cf5021c4a"
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/lampstand-labs/mobiterm/releases/download/v0.2.1/mobiterm-linux-arm64-gnu.tar.gz"
      sha256 "f369cfec4c996d1cfaefa241463107161a21dcd32557f233d7b989cb08f40b0e"
    end
  end

  def install
    bin.install "mobiterm"
  end
end

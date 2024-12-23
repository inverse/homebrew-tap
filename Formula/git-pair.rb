# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitPair < Formula
  desc "A simple CLI app to make it easier for pairing for co-authoring commits"
  homepage "https://github.com/inverse/git-pair/"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/inverse/git-pair/releases/download/v0.1.10/git-pair_Darwin_x86_64.tar.gz"
      sha256 "b9366fe7ff7363b0f25ff3b5d39260cdac926e43dddb0fa4229e841d69c18c7d"

      def install
        bin.install "git-pair"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/inverse/git-pair/releases/download/v0.1.10/git-pair_Darwin_arm64.tar.gz"
      sha256 "d75e669e8922b9a89b4b7a6e3f63b41da478d0b20fc266e7c1e030b6689d4a27"

      def install
        bin.install "git-pair"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/inverse/git-pair/releases/download/v0.1.10/git-pair_Linux_x86_64.tar.gz"
        sha256 "20ccd2e3359444104c753fd3744158ec657b67a73abf105489e33c34b791c63f"

        def install
          bin.install "git-pair"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/inverse/git-pair/releases/download/v0.1.10/git-pair_Linux_arm64.tar.gz"
        sha256 "406719c6a4033b4e0b324f8eb0580bcd662d78f014eac03668b78ce3557bc3fd"

        def install
          bin.install "git-pair"
        end
      end
    end
  end

  test do
    system "#{bin}/git-pair --version"
  end
end

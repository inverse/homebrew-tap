# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitPair < Formula
  desc "A simple CLI app to make it easier for pairing for co-authoring commits"
  homepage "https://github.com/inverse/git-pair/"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/inverse/git-pair/releases/download/v0.1.4/git-pair_Darwin_x86_64.tar.gz"
      sha256 "65e5b2928540825f083180346377831f618e6a2a875607444caf58806317296a"

      def install
        bin.install "git-pair"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/inverse/git-pair/releases/download/v0.1.4/git-pair_Darwin_arm64.tar.gz"
      sha256 "6729f272cb4bc3329bb8ee965f42ac1dcc1856dfb20e2c04ae4774df83acbac7"

      def install
        bin.install "git-pair"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/inverse/git-pair/releases/download/v0.1.4/git-pair_Linux_x86_64.tar.gz"
      sha256 "e9fcca3b9958f8f41217cfdc897da8c15418c7b077925e42e632dcb7ce24c478"

      def install
        bin.install "git-pair"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inverse/git-pair/releases/download/v0.1.4/git-pair_Linux_arm64.tar.gz"
      sha256 "0a39c7949d2c9fafbb1b5e4908a6cbf5b9abcf710a46b08a74065f3cb0f4d998"

      def install
        bin.install "git-pair"
      end
    end
  end

  test do
    system "#{bin}/git-pair --version"
  end
end

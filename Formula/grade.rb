# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grade < Formula
  desc "grade transforms Go benchmark data into various format so that you can uploads the data to a database and track the performance over time."
  homepage "https://github.com/sv-tools/grade"
  version "1.4.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sv-tools/grade/releases/download/v1.4.0/grade-v1.4.0-darwin-amd64.tar.gz"
    sha256 "76985e9cf95646dbb5f08a1e016f89b4eec8d9cfebfeecc7527d10e2333b141c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sv-tools/grade/releases/download/v1.4.0/grade-v1.4.0-darwin-arm64.tar.gz"
    sha256 "484afb81b1da7e31735788e21ec227a8465bcae7e1ff662a58e8b98fd95b3060"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sv-tools/grade/releases/download/v1.4.0/grade-v1.4.0-linux-amd64.tar.gz"
    sha256 "35e0b88b2003f0c96a6da755116ef1688079ecded5f4f41fc7b09f374582399f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sv-tools/grade/releases/download/v1.4.0/grade-v1.4.0-linux-arm64.tar.gz"
    sha256 "1d1178ad052a2ce50450dcbaff0cd1bd4f4bcce0d6dc9599f5f6666adc817b9b"
  end

  def install
    bin.install "grade"
  end

  test do
    assert_equal `#{bin}/grade --version`, "grade version v#{version}"
  end
end

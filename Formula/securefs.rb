class Securefs < Formula
  desc "Filesystem with transparent authenticated encryption"
  homepage "https://github.com/netheril96/securefs"
  url "https://github.com/netheril96/securefs/archive/0.7.0.tar.gz"
  sha256 "0e0bac7327a5652bdecf13bfcad530a65ca420ba37e965739e7eb6f0e3fa3b6e"
  head "https://github.com/netheril96/securefs.git"

  depends_on "cmake" => :build
  depends_on :osxfuse

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/securefs", "version" # The sandbox prevents a more thorough test
  end
end

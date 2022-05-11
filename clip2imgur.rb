class Clip2imgur < Formula
  desc "A simple macOS command line tool for uploading your copied image to Imgur"
  homepage "https://github.com/xiaohk/clip2imgur"
  url "https://github.com/xiaohk/clip2imgur/releases/download/v0.9.0/clip2imgur-0.9.0.tar.gz"
  sha256 "a1d4dbf13b91ef53d3fe1ec77accad331d44705e2b91000e3177c84764657dc1"

  def install
    bin.install "clip2imgur"
  end

  test do
    system "#{bin}/clip2imgur", "--help"
  end
end

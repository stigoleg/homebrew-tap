class Keepalive < Formula
  desc "A lightweight, cross-platform utility to prevent your system from going to sleep."
  homepage "https://github.com/stigoleg/keep-alive"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/stigoleg/keep-alive/releases/download/v1.3.1/keep-alive_Darwin_x86_64.tar.gz"
      sha256 "79ab52ee7222782d067f111f34756ac06007fda86720d7efc672302106bb92fb"
    end
    on_arm do
      url "https://github.com/stigoleg/keep-alive/releases/download/v1.3.1/keep-alive_Darwin_arm64.tar.gz"
      sha256 "01b99ee8c257c0c69fed20c8101c8fddd36029caae95c477ae6959231deda8eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/stigoleg/keep-alive/releases/download/v1.3.1/keep-alive_Linux_x86_64.tar.gz"
      sha256 "4851ab0a2c09919a5a50e7ffba8201180c3acdbcd2998f6e9c800b00ae2b25fa"
    end
    on_arm do
      url "https://github.com/stigoleg/keep-alive/releases/download/v1.3.1/keep-alive_Linux_arm64.tar.gz"
      sha256 "0d952aaefbc697cb4f2dbd6a8fd8ec457b40f9cce5a8d999d9f87e4a5d68aff4"
    end
  end

  def install
    bin.install "keepalive"
    man1.install "man/keepalive.1" if File.exist?("man/keepalive.1")
  end
end

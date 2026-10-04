class Gengoya < Formula
  desc "Image, video, music and speech generation CLI for coding agents"
  homepage "https://github.com/iamnikolie/gengoya"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.0/gengoya_0.1.0_darwin_arm64.tar.gz"
      sha256 "7febf3e3976696535390ba98a367bb3f14c7d8ead97c103f69472dfb1b970dba"
    end
    on_intel do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.0/gengoya_0.1.0_darwin_amd64.tar.gz"
      sha256 "946383b20bd64113d3560fc620008022c6f610071a49744307ddc4dcfd000b51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.0/gengoya_0.1.0_linux_arm64.tar.gz"
      sha256 "7eda047869b8728a26aa85410380c22f73ae2ce6523c7989a58944ff1fe5c48e"
    end
    on_intel do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.0/gengoya_0.1.0_linux_amd64.tar.gz"
      sha256 "805bb20800a2cea53f5581476828fa4d12e9d56c31fddcc0dbce97e08787b76d"
    end
  end

  depends_on "ffmpeg" => :recommended

  def install
    bin.install "gengoya"
  end

  test do
    assert_match(/^gengoya version /, shell_output("#{bin}/gengoya version"))
  end
end

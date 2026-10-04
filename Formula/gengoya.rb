class Gengoya < Formula
  desc "Image, video, music and speech generation CLI for coding agents"
  homepage "https://github.com/iamnikolie/gengoya"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.1/gengoya_0.1.1_darwin_arm64.tar.gz"
      sha256 "ce754dbec1f95414e9277b08f21d5a787ca78829ef0933582f39bcd86cc9f39a"
    end
    on_intel do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.1/gengoya_0.1.1_darwin_amd64.tar.gz"
      sha256 "0ba1218e926b422fdc01080737d792ae0f43804ee0358b1dad0e68f0b47388fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.1/gengoya_0.1.1_linux_arm64.tar.gz"
      sha256 "0b8825500bfa6ec0561553a3986f23da29c336d89bc05d0328d6a7ecaf96e568"
    end
    on_intel do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.1/gengoya_0.1.1_linux_amd64.tar.gz"
      sha256 "eb09d8faea91500f3b63a9518194865ff72b9771a784a13dff11d76fb6ea298b"
    end
  end

  def install
    bin.install "gengoya"
  end

  def caveats
    <<~EOS
      Video poster frames (the PNG contact sheet next to each clip) need ffmpeg:
        brew install ffmpeg
    EOS
  end

  test do
    assert_match(/^gengoya version /, shell_output("#{bin}/gengoya version"))
  end
end

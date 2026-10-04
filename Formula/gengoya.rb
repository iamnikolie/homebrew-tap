class Gengoya < Formula
  desc "Image, video, music and speech generation CLI for coding agents"
  homepage "https://github.com/iamnikolie/gengoya"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.2/gengoya_0.1.2_darwin_arm64.tar.gz"
      sha256 "a1d19f013f2f4f9bfc08a34b660dec5a0c3df4ff12a50425ace1f9fab3dabbba"
    end
    on_intel do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.2/gengoya_0.1.2_darwin_amd64.tar.gz"
      sha256 "fb212323e55cbdadf36d73a6b088896114a352447c4c679886b77bdaf4453031"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.2/gengoya_0.1.2_linux_arm64.tar.gz"
      sha256 "25b80c2ee6b1a6daa38faf91477a90e0728d39fad560db8613ba8ae719b8ab81"
    end
    on_intel do
      url "https://github.com/iamnikolie/gengoya/releases/download/v0.1.2/gengoya_0.1.2_linux_amd64.tar.gz"
      sha256 "576d7c60e2f60220520f0d4ce41da0496988c686137f3b81c5c80fcd16ca9aa2"
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

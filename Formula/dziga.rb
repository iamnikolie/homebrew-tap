class Dziga < Formula
  desc "Turn a video into context an LLM can actually read"
  homepage "https://github.com/iamnikolie/dziga"
  version "0.1.0"
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/dziga/releases/download/v0.1.0/dziga_0.1.0_darwin_arm64.tar.gz"
      sha256 "f553908e9d406f08aacf57a781d71c79bb201385236e9e961b121dd9fa3e44a9"
    end
    on_intel do
      url "https://github.com/iamnikolie/dziga/releases/download/v0.1.0/dziga_0.1.0_darwin_amd64.tar.gz"
      sha256 "b9fe1338b5f4601d2345f1200a28c90c95e29b7c5a2b5a6e232652e83e89c45a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/dziga/releases/download/v0.1.0/dziga_0.1.0_linux_arm64.tar.gz"
      sha256 "0defcd7e5b6dc43a1912682a574f16b8b814f1409341b70dc8a9820ed4a84ca7"
    end
    on_intel do
      url "https://github.com/iamnikolie/dziga/releases/download/v0.1.0/dziga_0.1.0_linux_amd64.tar.gz"
      sha256 "9f75088dfc8bab0d00363917cbde3bcd21c66bff64431220c9e81b1ede41b9c7"
    end
  end

  def install
    bin.install "dziga"
  end

  test do
    assert_match "dziga version", shell_output("#{bin}/dziga version")
  end
end

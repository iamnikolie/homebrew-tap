class Svidoq < Formula
  desc "Read-only SQL for agents — parsed allowlist plus a read-only transaction"
  homepage "https://github.com/iamnikolie/svidoq"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.1/svidoq_0.1.1_darwin_arm64.tar.gz"
      sha256 "a024941f9487d14152a9cadfa8f6f4e16ac1d50028ef4785af8a2faa128b7bfe"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.1/svidoq_0.1.1_darwin_amd64.tar.gz"
      sha256 "70ab4a6f06cddf444e2a0914484a9971f413e23eec6bab2e692ef85f06c4c441"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.1/svidoq_0.1.1_linux_arm64.tar.gz"
      sha256 "42cba439f1270c610c6df10129c0c6676a4a50a07c35d5fb4d0f0a45aefd1943"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.1/svidoq_0.1.1_linux_amd64.tar.gz"
      sha256 "ff3fc119372dfd375cb42a55f474812a205dc1461d46576d06191fd235f32364"
    end
  end

  def install
    bin.install "svidoq"
  end

  test do
    assert_match(/^svidoq /, shell_output("#{bin}/svidoq version"))
  end
end

class Svidoq < Formula
  desc "Read-only SQL for agents — parsed allowlist plus a read-only transaction"
  homepage "https://github.com/iamnikolie/svidoq"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.1/svidoq_0.2.1_darwin_arm64.tar.gz"
      sha256 "ab48d4ac6ffe0e0d467ff7a1f5b19be022b57ac0b6a64440b0b576c074602cf0"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.1/svidoq_0.2.1_darwin_amd64.tar.gz"
      sha256 "c83edc0d0bab0c1c156c954de113d96839c0f7806ceff84945c00270ddaa91be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.1/svidoq_0.2.1_linux_arm64.tar.gz"
      sha256 "bdbc780510b401cee6e02630326187894b5e3df53be4ca4332021d9e546d5891"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.1/svidoq_0.2.1_linux_amd64.tar.gz"
      sha256 "de499f3ee47a15133c9b42e56de9ad05d3d995bdbbd0f8d3580cd84f4e4b89a0"
    end
  end

  def install
    bin.install "svidoq"
  end

  test do
    assert_match(/^svidoq /, shell_output("#{bin}/svidoq version"))
  end
end

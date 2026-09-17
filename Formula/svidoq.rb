class Svidoq < Formula
  desc "Read-only SQL for agents — parsed allowlist plus a read-only transaction"
  homepage "https://github.com/iamnikolie/svidoq"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.0/svidoq_0.2.0_darwin_arm64.tar.gz"
      sha256 "3b98b3adb46dbe664e08b89d650194b0a91cbddd5b84c25a44d447c2c496ba5e"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.0/svidoq_0.2.0_darwin_amd64.tar.gz"
      sha256 "8f8c86489bd377a02b28f0a10fef4a8af56853b16ab1789cef07e9dd2ad61a28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.0/svidoq_0.2.0_linux_arm64.tar.gz"
      sha256 "07edae13f44ef167125cc919f8cbda3d8d843aa56e04d03225f48458bdd4c6e2"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.2.0/svidoq_0.2.0_linux_amd64.tar.gz"
      sha256 "ddad7ce178f1375095b6dee1ba573834545b13ff56a63d66b1ff530a7d602109"
    end
  end

  def install
    bin.install "svidoq"
  end

  test do
    assert_match(/^svidoq /, shell_output("#{bin}/svidoq version"))
  end
end

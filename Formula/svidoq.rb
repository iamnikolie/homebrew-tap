class Svidoq < Formula
  desc "Read-only SQL for agents — parsed allowlist plus a read-only transaction"
  homepage "https://github.com/iamnikolie/svidoq"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.2/svidoq_0.1.2_darwin_arm64.tar.gz"
      sha256 "5b1bb9910691be354e8a5b35eb92697161a9a7dc80eb36fb78ea78fc0e81be13"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.2/svidoq_0.1.2_darwin_amd64.tar.gz"
      sha256 "6eab6402d3725b271f4b370211f4b7764716a309c494242805da9b084a01b642"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.2/svidoq_0.1.2_linux_arm64.tar.gz"
      sha256 "d89aca18e508e79b1d39ca8ee740e8c1e2f1bf4612bc68a29fc26c94bc57b5aa"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.2/svidoq_0.1.2_linux_amd64.tar.gz"
      sha256 "120a68ac6664d13921647da573488f23e0206da59460e7606c200e72107bdc85"
    end
  end

  def install
    bin.install "svidoq"
  end

  test do
    assert_match(/^svidoq /, shell_output("#{bin}/svidoq version"))
  end
end

class Svidoq < Formula
  desc "Read-only SQL for agents — parsed allowlist plus a read-only transaction"
  homepage "https://github.com/iamnikolie/svidoq"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.0/svidoq_0.1.0_darwin_arm64.tar.gz"
      sha256 "219c943f8b1370e97eed73e9ac41b708b5b06fbf4966d6af3b9f773081cb3913"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.0/svidoq_0.1.0_darwin_amd64.tar.gz"
      sha256 "3580f49695b547226c85285b95951cf2eab360af1837d369b8a54814e8abec72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.0/svidoq_0.1.0_linux_arm64.tar.gz"
      sha256 "02cf744e64c9ad19cb9f02d994546d10c10c98070c8b4b260b7ff7c046097959"
    end
    on_intel do
      url "https://github.com/iamnikolie/svidoq/releases/download/v0.1.0/svidoq_0.1.0_linux_amd64.tar.gz"
      sha256 "28952560a57aca51700f28b8abec455d2b628fcbc0ed28c33e5470803f7bfb5c"
    end
  end

  def install
    bin.install "svidoq"
  end

  test do
    assert_match(/^svidoq /, shell_output("#{bin}/svidoq version"))
  end
end

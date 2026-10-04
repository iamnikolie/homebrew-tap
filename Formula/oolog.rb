class Oolog < Formula
  desc "OpenObserve logs from the terminal, built for coding agents"
  homepage "https://github.com/iamnikolie/oolog"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/oolog/releases/download/v0.1.0/oolog_0.1.0_darwin_arm64.tar.gz"
      sha256 "dc8d1fdfff69d91ae8041f6c98e734cbd2f23ea396d7db9c839407d008f5300f"
    end
    on_intel do
      url "https://github.com/iamnikolie/oolog/releases/download/v0.1.0/oolog_0.1.0_darwin_amd64.tar.gz"
      sha256 "5ed67c84e62d2d6b16b90d1222e7d3ed452b3e841348461657d61650b487ea86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/oolog/releases/download/v0.1.0/oolog_0.1.0_linux_arm64.tar.gz"
      sha256 "eb71c89a4e1fbd736959dac4ab968f981f8276347d0bac73f68698cc18063660"
    end
    on_intel do
      url "https://github.com/iamnikolie/oolog/releases/download/v0.1.0/oolog_0.1.0_linux_amd64.tar.gz"
      sha256 "c2944b9cfdf0e7e9a14e769c91ff27d33a63fa1ad80a8ec03fc38c017b0d4a20"
    end
  end

  def install
    bin.install "oolog"
  end

  test do
    assert_match(/^oolog version /, shell_output("#{bin}/oolog version"))
  end
end

class SlackCli < Formula
  desc "Agent-facing Slack CLI with token-lean output"
  homepage "https://github.com/iamnikolie/slack-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.1/slack-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "662ebb270ca9a1ca881f9e4037de2eda9aff9e5698e8f682aebb757377c80e33"
    end
    on_intel do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.1/slack-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "fd896ee091b5b75873490066ba2de07aee1b068171f910c69be09f23e390e658"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.1/slack-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "e361850a72ce2d640e707cf133833cc328053c7a83a5f7cba539488ae134ff8f"
    end
    on_intel do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.1/slack-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "c1047888eeff212663cb23e288570d885944eb906c70ab47a904ecc46029ec0b"
    end
  end

  def install
    bin.install "slk"
  end

  test do
    assert_match(/^slk version /, shell_output("#{bin}/slk version"))
  end
end

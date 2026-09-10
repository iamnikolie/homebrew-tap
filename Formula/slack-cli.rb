class SlackCli < Formula
  desc "Agent-facing Slack CLI with token-lean output"
  homepage "https://github.com/iamnikolie/slack-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.0/slack-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "c2001bd4a12bd83cb5b4bd4bab282ac98796260b97afc8b942da9014cf3f97de"
    end
    on_intel do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.0/slack-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "77200455422f7acfebe21d4cf37d23386ef799311df484f8f22d6f7dd96b2104"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.0/slack-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "699760e7f600fbb0d894dd8e58fa39f212a3e4ad1f36b4090324a1d47ffe8d1b"
    end
    on_intel do
      url "https://github.com/iamnikolie/slack-cli/releases/download/v0.1.0/slack-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "9b11c910abaa2a638b132e927a683a5a83f8ae45d2ddd29219ecd2bb694b4c4a"
    end
  end

  def install
    bin.install "slk"
  end

  test do
    assert_match(/^slk version /, shell_output("#{bin}/slk version"))
  end
end

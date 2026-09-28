class Mcpcli < Formula
  desc "Any remote MCP server as a CLI, with OAuth profiles per account"
  homepage "https://github.com/iamnikolie/mcpcli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.2.0/mcpcli_0.2.0_darwin_arm64.tar.gz"
      sha256 "6893f1bc256697e765423a6ab62d53e0b43bdb5dde1dcce179070e144d8ca46a"
    end
    on_intel do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.2.0/mcpcli_0.2.0_darwin_amd64.tar.gz"
      sha256 "2e5e3c5bea2fb27b123385331ec24d7966a1177d0b17a1598f85c3da528400d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.2.0/mcpcli_0.2.0_linux_arm64.tar.gz"
      sha256 "1dce4cac4917e9af0081de1008487ca4773e8e7e930b8429c0cec15edd93c9fe"
    end
    on_intel do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.2.0/mcpcli_0.2.0_linux_amd64.tar.gz"
      sha256 "93a1384571812a1aeae209d3df0b885c7ed47f9b0e95645aa4c2f05d5557f934"
    end
  end

  def install
    bin.install "mcpcli"
  end

  test do
    assert_match(/^mcpcli version /, shell_output("#{bin}/mcpcli version"))
  end
end

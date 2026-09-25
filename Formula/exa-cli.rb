class ExaCli < Formula
  desc "Agent-facing CLI for the Exa search API"
  homepage "https://github.com/iamnikolie/exa-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/exa-cli/releases/download/v0.1.1/exa-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "0ee2f485ce333bde8e51244fe3c0ff447ef9933c10bc67d81354dff2a157e3fb"
    end
    on_intel do
      url "https://github.com/iamnikolie/exa-cli/releases/download/v0.1.1/exa-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "f884611055cc7da3d8f7bc06d6ef90b3d1a64b43dd60cb1603a23560382e6696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/exa-cli/releases/download/v0.1.1/exa-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "a2ccf722deb557c26732c50d57c1e32550b9e156575da11dcce845aabf3ae576"
    end
    on_intel do
      url "https://github.com/iamnikolie/exa-cli/releases/download/v0.1.1/exa-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "0b8f1eaa009367f4bb2c3b8d8176158dac0e5881b35b1cbcbfb164e221cb5f17"
    end
  end

  def install
    bin.install "exa"
  end

  test do
    assert_match(/^exa version /, shell_output("#{bin}/exa version"))
  end
end

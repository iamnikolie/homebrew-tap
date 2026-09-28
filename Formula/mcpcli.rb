class Mcpcli < Formula
  desc "Any remote MCP server as a CLI, with OAuth profiles per account"
  homepage "https://github.com/iamnikolie/mcpcli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.1.0/mcpcli_0.1.0_darwin_arm64.tar.gz"
      sha256 "900e84275a73d71836470d0e74e6eb91ec2f62509b09be5a04b081fea5fc7b75"
    end
    on_intel do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.1.0/mcpcli_0.1.0_darwin_amd64.tar.gz"
      sha256 "70712ab8cde148183dda0ad1e0c24c2911d30f1d13ec2abd99a48db90c1800fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.1.0/mcpcli_0.1.0_linux_arm64.tar.gz"
      sha256 "20706f73e7a7045e79cabbd70f2c453a05579f598dac5c8fa0af67533e50aef6"
    end
    on_intel do
      url "https://github.com/iamnikolie/mcpcli/releases/download/v0.1.0/mcpcli_0.1.0_linux_amd64.tar.gz"
      sha256 "27d2656f9b7e52fe72f686312a9693fac30349d7110f287f585ff6b54f07baa3"
    end
  end

  def install
    bin.install "mcpcli"
  end

  test do
    assert_match(/^mcpcli version /, shell_output("#{bin}/mcpcli version"))
  end
end

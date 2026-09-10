class FiberyCli < Formula
  desc "CLI for Fibery — query, create, comment and attach from a shell"
  homepage "https://github.com/iamnikolie/fibery-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.0/fibery-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "6f268b7ffc2d730b58306424c8d615510e99af1f6a6cb0743e4a92b48396bcaa"
    end
    on_intel do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.0/fibery-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "42b55e2f13d0e191bef2edc0ad707db4caff64ddd089ee65b4eb7a652d5c6341"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.0/fibery-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "1169bbad433b93d14c72545d303f82b82760d2c6577deb7ddedf2c89d5120492"
    end
    on_intel do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.0/fibery-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "26abc7e48438472ec09ab710dafea038a3bcf6a04bbcd7e8a60deaffb313ab4c"
    end
  end

  def install
    bin.install "fibery"
  end

  test do
    assert_match "fibery", shell_output("#{bin}/fibery version")
  end
end

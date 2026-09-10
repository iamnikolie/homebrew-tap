class FiberyCli < Formula
  desc "CLI for Fibery — query, create, comment and attach from a shell"
  homepage "https://github.com/iamnikolie/fibery-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.2/fibery-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "51bf0e4be54ea1b2d678cced30c48ebee8dc83e7747654a192478ac90d8c8731"
    end
    on_intel do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.2/fibery-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "30b8f125ef79e2859adbb4434a2985d1f45690c40c496270eb26a919052f1266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.2/fibery-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "7b5e11424aab6e1155f4f69b965e489912ba2732a79f60b25d3fbf9ad99cf008"
    end
    on_intel do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.2/fibery-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "93a928b671930dab5426fa442f40f1fbe603d037111aa0af00ffdb99da93de46"
    end
  end

  def install
    bin.install "fibery"
  end

  test do
    assert_match(/^fibery /, shell_output("#{bin}/fibery version"))
  end
end

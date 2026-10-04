class Oko < Formula
  desc "Browser CLI for coding agents, driving a dedicated Chrome over CDP"
  homepage "https://github.com/iamnikolie/oko"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/oko/releases/download/v0.1.0/oko_0.1.0_darwin_arm64.tar.gz"
      sha256 "fb777b2b548011d556c434d24850f3d0a19eb6e2c35ff0b0e3c3fa3a24439036"
    end
    on_intel do
      url "https://github.com/iamnikolie/oko/releases/download/v0.1.0/oko_0.1.0_darwin_amd64.tar.gz"
      sha256 "6d6ef59f1d4afcf4fe77249749e61d223d9b7757813f80050171c7a7e237b683"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/oko/releases/download/v0.1.0/oko_0.1.0_linux_arm64.tar.gz"
      sha256 "0a1ec8dd409fc4c9bf779f3a588d9a6ee514987d092d7f4a5114c7c6a356dc70"
    end
    on_intel do
      url "https://github.com/iamnikolie/oko/releases/download/v0.1.0/oko_0.1.0_linux_amd64.tar.gz"
      sha256 "ff1c3f1acc70bc47fdf7ee1ac2471628f058da6c7cf56a1fc1e9c6999e5b5c56"
    end
  end

  def install
    bin.install "oko"
  end

  test do
    assert_match(/^oko version /, shell_output("#{bin}/oko --version"))
  end
end

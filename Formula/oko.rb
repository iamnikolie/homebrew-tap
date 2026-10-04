class Oko < Formula
  desc "Browser CLI for coding agents, driving a dedicated Chrome over CDP"
  homepage "https://github.com/iamnikolie/oko"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/oko/releases/download/v0.3.0/oko_0.3.0_darwin_arm64.tar.gz"
      sha256 "a32b7fda4a23e6c40982fdfc9725afa97295b4a475cfb09a617cc595cb578373"
    end
    on_intel do
      url "https://github.com/iamnikolie/oko/releases/download/v0.3.0/oko_0.3.0_darwin_amd64.tar.gz"
      sha256 "613fb408784ef0662f9d7df0e59faaf179ea2492b64f2a7299dca659055c9de7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/oko/releases/download/v0.3.0/oko_0.3.0_linux_arm64.tar.gz"
      sha256 "8a996e46e21533f14b333b36553b07a8c476fd60468d4230953c8a917cbfb9d0"
    end
    on_intel do
      url "https://github.com/iamnikolie/oko/releases/download/v0.3.0/oko_0.3.0_linux_amd64.tar.gz"
      sha256 "8b2b9157e76694ad1d6131f10dd5525def5c5c63b9aacdedaa34dee34d813f6d"
    end
  end

  def install
    bin.install "oko"
  end

  test do
    assert_match(/^oko version /, shell_output("#{bin}/oko --version"))
  end
end

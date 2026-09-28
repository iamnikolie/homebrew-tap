class WisprCli < Formula
  desc "Read Wispr Flow dictations, meeting notes and transcripts from the terminal"
  homepage "https://github.com/iamnikolie/wispr-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/wispr-cli/releases/download/v0.1.0/wispr-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "65552c7d3b053d5724f48404b5e813bc444d682a1a458cb7e9d5f642ca9ae89b"
    end
    on_intel do
      url "https://github.com/iamnikolie/wispr-cli/releases/download/v0.1.0/wispr-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "f9e059fff2625207914e462356655b860df8aefe666e6280dd96166770a7468a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/wispr-cli/releases/download/v0.1.0/wispr-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "60b82aed7d47a94ef65ede2de2c978abe085eac5eabd8c90b620bb05fbf561ec"
    end
    on_intel do
      url "https://github.com/iamnikolie/wispr-cli/releases/download/v0.1.0/wispr-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "39be3293a76c071ac7d2260ff15f01c74964c0c71dbbc5929505c973021a3c6e"
    end
  end

  def install
    bin.install "wispr"
  end

  test do
    assert_match(/^wispr version /, shell_output("#{bin}/wispr version"))
  end
end

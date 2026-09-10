class GitlabCli < Formula
  desc "Agent-facing GitLab CLI with token-lean output"
  homepage "https://github.com/iamnikolie/gitlab-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/gitlab-cli/releases/download/v0.1.0/gitlab-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "c1cbb1b48ca3a134ee65ebdf6428ed9082e0064a0799ecb82494fd4740f34f1d"
    end
    on_intel do
      url "https://github.com/iamnikolie/gitlab-cli/releases/download/v0.1.0/gitlab-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "186528f94e8c98620e79726a1aeff79a04a7234c3c59d8e2c60b880498ac2cc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/gitlab-cli/releases/download/v0.1.0/gitlab-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "9660402aa091860a985950a637d297f7a273596621af532c555be17a196da967"
    end
    on_intel do
      url "https://github.com/iamnikolie/gitlab-cli/releases/download/v0.1.0/gitlab-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "68b66dd7ba72edc4355e9788f2da75c195081b3843dc05c301a38ee59688ed6c"
    end
  end

  def install
    bin.install "gl"
  end

  test do
    assert_match "gl version", shell_output("#{bin}/gl version")
  end
end

class Oko < Formula
  desc "Browser CLI for coding agents, driving a dedicated Chrome over CDP"
  homepage "https://github.com/iamnikolie/oko"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/oko/releases/download/v0.2.0/oko_0.2.0_darwin_arm64.tar.gz"
      sha256 "6cc92951b12aaaa1294dc4f1e0c396217ddcaab728402957df2301fd50771220"
    end
    on_intel do
      url "https://github.com/iamnikolie/oko/releases/download/v0.2.0/oko_0.2.0_darwin_amd64.tar.gz"
      sha256 "a0483a77e3f751173d063f78040cf74b916692efd8c4696e2b16aa4ed39f0eb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/oko/releases/download/v0.2.0/oko_0.2.0_linux_arm64.tar.gz"
      sha256 "55e851c27e32a7e5a5506de38142eb36e1f598c100fb00a5ef19c53dbeb27c92"
    end
    on_intel do
      url "https://github.com/iamnikolie/oko/releases/download/v0.2.0/oko_0.2.0_linux_amd64.tar.gz"
      sha256 "50a628191d1ce4a77bfe2d5960dba45a8e4a62459185a1cefd7069751fdf0b00"
    end
  end

  def install
    bin.install "oko"
  end

  test do
    assert_match(/^oko version /, shell_output("#{bin}/oko --version"))
  end
end

class FiberyCli < Formula
  desc "CLI for Fibery — query, create, comment and attach from a shell"
  homepage "https://github.com/iamnikolie/fibery-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.1/fibery-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "e3b34436fb7f20ccd7720aafe7750ce38658e3d068ce6fdbbb124142b9ea2c8f"
    end
    on_intel do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.1/fibery-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "a55874690fb1f32aebba373db8fc48f761706dd43de7f031a5a88f11a44b6e3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.1/fibery-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "0885dfb19bef7f9fd25da75a101a4603871113186cc1b0c16a543ca586d753ad"
    end
    on_intel do
      url "https://github.com/iamnikolie/fibery-cli/releases/download/v0.1.1/fibery-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "96a24e8d4b702e54337b1d298a74393e68a1bfb80edfd83b2bc720dfa0f3545b"
    end
  end

  def install
    bin.install "fibery"
  end

  test do
    assert_match "fibery", shell_output("#{bin}/fibery version")
  end
end

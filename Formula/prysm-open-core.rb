# frozen_string_literal: true

class PrysmOpenCore < Formula
  desc "Prysm Open-Core - Zero Trust Infrastructure Access Platform"
  homepage "https://github.com/prysmsh/prysm-community"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prysmsh/prysm-community/releases/download/v0.0.1/prysm-cli-0.0.1-darwin-arm64.tar.gz"
      sha256 "08eda78e8ed9116d954c4bb6946f59a23c76223b6a9d562608fb8bea3a2e9578"
    else
      url "https://github.com/prysmsh/prysm-community/releases/download/v0.0.1/prysm-cli-0.0.1-darwin-amd64.tar.gz"
      sha256 "4e09900cdd7765986a2b4dba069143dcd3ffc592cdd0e3f102cb36d9f3901cc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prysmsh/prysm-community/releases/download/v0.0.1/prysm-cli-0.0.1-linux-arm64.tar.gz"
      sha256 "74b20562dcc34e79808cc47f31b0f33e99212d0236562c8aba25f24416eccf52"
    else
      url "https://github.com/prysmsh/prysm-community/releases/download/v0.0.1/prysm-cli-0.0.1-linux-amd64.tar.gz"
      sha256 "9678f2785eed256023c7d8a18a261d19ac637253f703db4600654a5b3a3b562c"
    end
  end

  def install
    bin.install "prysm"
    
    # Generate shell completions
    generate_completions_from_executable(bin/"prysm", "completion")
  end

  def caveats
    <<~EOS
      🎉 Prysm Open-Core installed successfully!
      
      This is the community edition of Prysm. For enterprise features, visit:
        https://prysm.sh
      
      Get started:
        prysm --help
        prysm login
      
      Documentation:
        https://github.com/prysmsh/prysm-community
    EOS
  end

  test do
    # Test that the binary runs
    assert_match "prysm", shell_output("\#{bin}/prysm --version")
    
    # Test help command
    help_output = shell_output("\#{bin}/prysm --help")
    assert_match "Zero Trust Infrastructure Access", help_output
  end
end

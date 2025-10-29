# frozen_string_literal: true

class PrysmCli < Formula
  desc "Prysm zero-trust infrastructure CLI"
  homepage "https://prysm.sh"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prysmsh/prysm/releases/download/v0.6.0/prysm-cli-0.6.0-darwin-arm64.tar.gz"
      sha256 "2fa3f7fb8c14c13e7e627fb2ba1afaee932bf6838bcc8900ba7baa5a7382ecc0"
    else
      url "https://github.com/prysmsh/prysm/releases/download/v0.6.0/prysm-cli-0.6.0-darwin-amd64.tar.gz"
      sha256 "e86d1e0df093282ccaf43eec6ed4204288f9ac3c25bf6a496ee6e029e536a9e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prysmsh/prysm/releases/download/v0.6.0/prysm-cli-0.6.0-linux-arm64.tar.gz"
      sha256 "7639ec06d46b99602f3cae2f099ff73ebd2e38e5ebd65e78c849108110e6cb7a"
    else
      url "https://github.com/prysmsh/prysm/releases/download/v0.6.0/prysm-cli-0.6.0-linux-amd64.tar.gz"
      sha256 "3df7e282765b07066ea39d37adbacda458b559c0d27862afae866b2d1f022896"
    end
  end

  def install
    bin.install "prysm"
    generate_completions_from_executable(bin/"prysm", "completion")
  end

  test do
    help_output = shell_output("\#{bin}/prysm --help")
    assert_match "Prysm zero-trust infrastructure CLI", help_output
  end
end

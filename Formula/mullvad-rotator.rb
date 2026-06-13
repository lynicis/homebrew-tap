class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "7a9b40882d803414f3a6df19aac49a1aecbb94591d2d76d5720f8e30e0dc703e"
  license "MIT"

  def install
    bin.install "mullvad-rotator.sh" => "mullvad-rotator"
  end

  def caveats
    <<~EOS
      mullvad-rotator requires the Mullvad VPN client (cask mullvad-vpn).
      Install it first: brew install --cask mullvad-vpn
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mullvad-rotator --version 2>&1")
  end
end

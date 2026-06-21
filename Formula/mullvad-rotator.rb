class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "9c5900a0fc7edbed7f3d61d1717be7c347edad730dd2a03320d55085a0a6b876"
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

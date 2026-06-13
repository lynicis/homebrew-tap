class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "054a438a9b37567a44517df041c9531cf1335119830774e78a08532e9c6d98fc"
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

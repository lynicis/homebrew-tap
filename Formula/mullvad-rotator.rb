class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "2d287e808cdacf0f61c80355c1e5199f3e52f1b3e174a9f311804d55199d9a3a"
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

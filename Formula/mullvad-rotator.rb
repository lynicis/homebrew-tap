class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "2a876c9cf335c69b2d49758e05d51f42dd0c0510a5bd4b9caaff26f76283672f"
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

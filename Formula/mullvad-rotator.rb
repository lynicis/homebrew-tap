class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ff5ec6d32dab8ed926cd5c7a4f8c70780c0a49403e423f129907d0aa984cc963"
  license "MIT"

  depends_on "mullvad" => :run

  def install
    bin.install "mullvad-rotator.sh" => "mullvad-rotator"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mullvad-rotator --version 2>&1")
  end
end

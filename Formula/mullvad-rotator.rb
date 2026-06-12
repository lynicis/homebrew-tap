class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "mullvad" => :run

  def install
    bin.install "mullvad-rotator.sh" => "mullvad-rotator"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mullvad-rotator --version 2>&1")
  end
end

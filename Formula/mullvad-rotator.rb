class MullvadRotator < Formula
  desc "Rotate Mullvad VPN relays and WireGuard keys"
  homepage "https://github.com/lynicis/mullvad-rotator"
  url "https://github.com/lynicis/mullvad-rotator/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6a9b6f64bbf923ab0c156a1f09f556bdad65eaefa5359bcccb85bd92d8b6a564"
  license "MIT"

  depends_on "mullvad" => :run

  def install
    bin.install "mullvad-rotator.sh" => "mullvad-rotator"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mullvad-rotator --version 2>&1")
  end
end

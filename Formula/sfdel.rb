class Sfdel < Formula
  desc "Delete Safari browsing history on macOS"
  homepage "https://github.com/lynicis/sfdel"
  url "https://github.com/lynicis/sfdel/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "a9e071cb96bcb4943edf76b909c4a2b46fa32bad2dc7043e159d9ef85ecf4c5c"
  license "MIT"

  def install
    bin.install "sfdel.sh" => "sfdel"
  end

  test do
    assert_match "sfdel", shell_output("#{bin}/sfdel --version")
  end
end

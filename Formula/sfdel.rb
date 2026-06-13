class Sfdel < Formula
  desc "Delete Safari browsing history on macOS"
  homepage "https://github.com/lynicis/sfdel"
  url "https://github.com/lynicis/sfdel/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "7b72e6434b125246bbacb5d674037e783a744b700d788bdc84b4be50be241339"
  license "MIT"

  def install
    bin.install "sfdel.sh" => "sfdel"
  end

  test do
    assert_match "sfdel", shell_output("#{bin}/sfdel --version")
  end
end

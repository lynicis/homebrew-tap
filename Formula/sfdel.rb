class Sfdel < Formula
  desc "Delete Safari browsing history on macOS"
  homepage "https://github.com/lynicis/sfdel"
  url "https://github.com/lynicis/sfdel/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "07656e5e9a81534a32fb8603c70468e3e02fff8e212b8f8555d0b6db21a4a5b2"
  license "MIT"

  def install
    bin.install "sfdel.sh" => "sfdel"
  end

  test do
    assert_match "sfdel", shell_output("#{bin}/sfdel --version")
  end
end

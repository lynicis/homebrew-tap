class Sfdel < Formula
  desc "Delete Safari browsing history on macOS"
  homepage "https://github.com/lynicis/sfdel"
  url "https://github.com/lynicis/sfdel/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "e1335c92ae71c94eee752c8a4297489e9a816a11cbd98301281bc4a636de17e9"
  license "MIT"

  def install
    bin.install "sfdel.sh" => "sfdel"
  end

  test do
    assert_match "sfdel", shell_output("#{bin}/sfdel --version")
  end
end

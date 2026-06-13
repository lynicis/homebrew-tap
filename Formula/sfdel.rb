class sfdel < Formula
  desc "Delete Safari browsing history on macOS"
  homepage "https://github.com/lynicis/sfdel"
  url "https://github.com/lynicis/sfdel/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "02d28dd890ba996c56a1a63af5f7f4a4dc4b774163149431a049eaa6c257f5d6"
  license "MIT"

  def install
    bin.install "sfdel.sh" => "sfdel"
  end
end

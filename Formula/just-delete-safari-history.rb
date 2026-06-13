class JustDeleteSafariHistory < Formula
  desc "Delete Safari browsing history on macOS"
  homepage "https://github.com/lynicis/just-delete-safari-history"
  url "https://github.com/lynicis/just-delete-safari-history/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "94724b4d911da6d62cb2821da644a89f81a22c54603826714156f26312a8716c"
  license "MIT"

  def install
    bin.install "just.sh" => "just-delete-safari-history"
  end
end

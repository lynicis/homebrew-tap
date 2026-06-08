class Inzibat < Formula
  desc "A lightweight HTTP mock server for microservices testing and development"
  homepage "https://github.com/lynicis/inzibat"
  url "https://github.com/lynicis/inzibat.git",
      tag:      "v0.3.4",
      revision: "0b1fa56102aff8592cb369700c7e8c16e3cbf8dd"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{stable.specs[:revision]}
      -X main.date=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    assert_match "Inzibat", shell_output("#{bin}/inzibat help")
  end
end

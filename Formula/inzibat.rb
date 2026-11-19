class Inzibat < Formula
  desc "A lightweight HTTP mock server for microservices testing and development"
  homepage "https://github.com/lynicis/inzibat"
  url "https://github.com/lynicis/inzibat.git",
      tag:      "v0.5.2",
      revision: "2bb2e8a2c18237e389c3a2f79435b52de3698a82"
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

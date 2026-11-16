class Inzibat < Formula
  desc "A lightweight HTTP mock server for microservices testing and development"
  homepage "https://github.com/lynicis/inzibat"
  url "https://github.com/lynicis/inzibat.git",
      tag:      "v0.5.0",
      revision: "1e1ce6a043a4e63218e63bb481f819270c05c94f"
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

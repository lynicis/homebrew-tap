class Inzibat < Formula
  desc "A lightweight HTTP mock server for microservices testing and development"
  homepage "https://github.com/lynicis/inzibat"
  url "https://github.com/lynicis/inzibat.git",
      tag:      "v0.5.3",
      revision: "f4daf80ad94e73b0a9c7774d5226962d4e336c8f"
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

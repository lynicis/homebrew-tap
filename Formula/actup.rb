class Actup < Formula
  desc "Upgrade GitHub Actions versions interactively from your terminal"
  homepage "https://github.com/lynicis/actup"
  url "https://github.com/lynicis/actup.git",
      tag:      "v0.3.0",
      revision: "80157e889aee40cb942dd23b2ff921636b99c7c5"
  license "MIT"
  head "https://github.com/lynicis/actup.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{stable.specs[:revision]}
      -X main.date=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "-o", bin/"actup", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/actup --version")
  end
end

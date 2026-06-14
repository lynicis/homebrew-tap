class Actup < Formula
  desc "Upgrade GitHub Actions versions interactively from your terminal"
  homepage "https://github.com/lynicis/actup"
  url "https://github.com/lynicis/actup.git",
      tag:      "v0.6.0",
      revision: "8a999ff22f06319bcb97c1890125e2fc6b9a2f19"
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

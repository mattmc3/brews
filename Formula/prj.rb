class Prj < Formula
  desc "Project jumper - quickly navigate to your Git projects"
  homepage "https://github.com/mattmc3/prj"
  head "https://github.com/mattmc3/prj.git", branch: "main"
  license "MIT"

  depends_on "fd"
  depends_on "fzf"

  def install
    bin.install "prj"
  end

  test do
    assert_match "prj ver", shell_output("#{bin}/prj -v")
  end
end

class MacosCmds < Formula
  desc "macOS utility scripts"
  homepage "https://github.com/mattmc3/macos-cmds"
  license "MIT"

  head "https://github.com/mattmc3/macos-cmds.git", branch: "main"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_predicate bin/"flushdns", :exist?
  end
end

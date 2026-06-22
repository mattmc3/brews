class MacosCmds < Formula
  desc "macOS utility scripts"
  homepage "https://github.com/mattmc3/macos-cmds"
  license "MIT"

  head "https://github.com/mattmc3/macos-cmds.git", branch: "main"

  def install
    bin.install Dir["bin/*"]
    zsh_completion.install Dir["completions/_*"]
    fish_completion.install Dir["completions/*.fish"]
  end

  test do
    assert_predicate bin/"flushdns", :exist?
  end
end

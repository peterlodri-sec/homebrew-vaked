# Homebrew Formula for Smart Tree
# Install directly from source or use head build from 8b-is/smart-tree
class SmartTree < Formula
  desc "Lightning-fast AST-aware directory visualization, quantum compression & MCP context server"
  homepage "https://github.com/8b-is/smart-tree"
  license "MIT"
  version "5.2.0"

  url "https://github.com/8b-is/smart-tree/archive/refs/tags/v5.2.0.tar.gz"
  head "https://github.com/8b-is/smart-tree.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  def caveats
    <<~EOS
      Smart Tree has been installed as `st`

      Quick start:
        st                    # Classic tree view
        st --spicy           # 🌶️ Spicy TUI mode
        st --mode quantum    # Maximum compression
        st --mcp             # Run as Model Context Protocol (MCP) server
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/st --version")
    system "#{bin}/st", "--help"
  end
end

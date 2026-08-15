# Homebrew Formula for MagiSCanner
# Deep file security scanning, hash memory & supply-chain defense for AI/Agent ecosystems
class Magiscanner < Formula
  desc "Deep file security scanner, hash memory & certificate trust guardian for agentic systems"
  homepage "https://github.com/8bit-wraith/magiscanner"
  license "MIT"
  version "1.0.0"

  head "https://github.com/8bit-wraith/magiscanner.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  def caveats
    <<~EOS
      MagiSCanner has been installed as `magiscanner`

      Quick start:
        magiscanner scan .                 # Deep audit of repository / supply-chain
        magiscanner --daemon               # Continuous background sentinel
        magiscanner --mcp                  # Run as Model Context Protocol (MCP) server
    EOS
  end

  test do
    system "#{bin}/magiscanner", "--help"
  end
end

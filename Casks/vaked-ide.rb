cask "vaked-ide" do
  version "1.0.0"
  sha256 "2d8c2f23a6c9912d8abd82c85c14f124fa9b6766718d3a90d2d6c8d5bcdb6f1b"

  url "https://github.com/peterlodri-sec/vaked-base/releases/download/v#{version}/Vaked.IDE_#{version}_aarch64.dmg"
  name "Vaked IDE"
  desc "Sovereign AI Gateway, SIMD Matrix & Agentic Fleet IDE"
  homepage "https://portail-vaked-dev.pages.dev/showcase.html"

  app "Vaked IDE.app"

  zap trash: [
    "~/Library/Application Support/dev.vaked.ide",
    "~/Library/Caches/dev.vaked.ide",
    "~/Library/Preferences/dev.vaked.ide.plist",
    "~/Library/Saved Application State/dev.vaked.ide.savedState",
  ]
end

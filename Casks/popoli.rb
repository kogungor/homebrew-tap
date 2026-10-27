cask "popoli" do
  version "0.10.3"
  sha256 "08044e1a701dcf8fa1a092bc3de72551e7551fe17e30e58a333e4ecd9302b100"

  url "https://github.com/kogungor/popoli/releases/download/v#{version}/Popoli-#{version}.dmg"
  name "Popoli"
  desc "Action bar for selected text and Finder right-click menu"
  homepage "https://github.com/kogungor/popoli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Popoli.app"

  uninstall quit: "app.popoli.Popoli"

  zap trash: [
    "~/Library/Application Support/Popoli",
    "~/Library/Caches/app.popoli.Popoli",
    "~/Library/Containers/app.popoli.Popoli.FinderMenu",
    "~/Library/HTTPStorages/app.popoli.Popoli",
    "~/Library/HTTPStorages/app.popoli.Popoli.binarycookies",
    "~/Library/Preferences/app.popoli.Popoli.plist",
    "~/Library/WebKit/app.popoli.Popoli",
  ]
end

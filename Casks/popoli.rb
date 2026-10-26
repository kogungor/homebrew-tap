cask "popoli" do
  version "0.10.2"
  sha256 "9e9bb84e4e2dac34e78b95bc4a661fa628dcefa876733c52d0f5ef8d943528db"

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

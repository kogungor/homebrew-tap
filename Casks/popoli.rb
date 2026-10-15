cask "popoli" do
  version "0.9.8"
  sha256 "121d928c866899b82afb3c7df71eaaa49ac2f47813ee0f32891c53d5e81a7478"

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

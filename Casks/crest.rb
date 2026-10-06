cask "crest" do
  version "6.4.0"
  sha256 "c8eff4c8dbbb28c659bb5d68ec088b3a39d3c44bb7b870dcb8ff06b8140d216c"

  url "https://crestnotch.app/downloads/Crest-#{version}.dmg"
  name "Crest"
  desc "Notch app with widget pages, music controls and Claude Code answers"
  homepage "https://crestnotch.app/"

  livecheck do
    url "https://crestnotch.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Crest.app"

  zap trash: [
    "~/Library/Application Support/Crest",
    "~/Library/Caches/com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest",
    "~/Library/Preferences/com.zack40x.crest.plist",
  ]
end

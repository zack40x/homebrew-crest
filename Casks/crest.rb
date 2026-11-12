cask "crest" do
  version "6.9.1"
  sha256 "c3247255f133090bf807de2c1173302a970abe0841c4fbf1d9cae61045dfdce0"

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

cask "crest" do
  version "5.1.0"
  sha256 "caead5677632fe311a11bab2453b4f30cb54f5ebf19b0acdb029bbf7a3360761"

  url "https://crestnotch.app/downloads/Crest-#{version}.dmg"
  name "Crest"
  desc "Notch companion with live modules, modes, and a Claude co-pilot"
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

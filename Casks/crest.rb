cask "crest" do
  version "5.3.0"
  sha256 "04b4cc7318838b342349ed79f05cdf02f493196c1411ea614772b35fe8eb0729"

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

cask "crest" do
  version "5.3.1"
  sha256 "5ad315092a14be97369841b82a0dc6e73d7a5e6fcfeacdfb740384223c5d9a46"

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

cask "otterbeam" do
  version "1.11.461,1332"
  sha256 "d186d0bc1d6136f6e97821ddc9d9c6a5e8309ba9fd43cf664c1df1c215130257"

  url "https://beam.otterd.com/releases/macos/OtterBeam-#{version.csv.first}+#{version.csv.second}.dmg"
  name "Otar"
  desc "Command your coding agents, terminals and computers from any device"
  homepage "https://beam.otterd.com/about"

  livecheck do
    url "https://beam.otterd.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Otar.app"

  zap trash: [
    "~/Library/Application Support/OtterBeam",
    "~/Library/Caches/com.otterd.beam",
    "~/Library/Preferences/com.otterd.beam.plist",
  ]
end

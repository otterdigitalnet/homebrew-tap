cask "otterbeam" do
  version "1.11.443,1294"
  sha256 "306d044d9cb9391cb4eb4441978f79ce9cde7f67025ab6c4dee4f58afc102be2"

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

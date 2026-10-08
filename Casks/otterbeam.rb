cask "otterbeam" do
  version "1.11.162,709"
  sha256 "bbd91e683284cf3f06a996a84cdcc8ee79adf888ffc61f52a5f4a71f6badcea3"

  url "https://beam.otterd.com/releases/macos/OtterBeam-#{version.csv.first}+#{version.csv.second}.dmg"
  name "Otter Beam"
  desc "Command your coding agents, terminals and computers from any device"
  homepage "https://beam.otterd.com/about"

  livecheck do
    url "https://beam.otterd.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "OtterBeam.app"

  zap trash: [
    "~/Library/Application Support/OtterBeam",
    "~/Library/Caches/com.otterd.beam",
    "~/Library/Preferences/com.otterd.beam.plist",
  ]
end

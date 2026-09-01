cask "otterbeam" do
  version "1.8.1,114"
  sha256 "cd8ca43a99a26a027eeb40f4e56a3dc8aabf181809640a49d3663f9fb93b5d71"

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

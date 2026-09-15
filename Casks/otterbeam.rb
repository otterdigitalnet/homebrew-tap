cask "otterbeam" do
  version "1.11.37,313"
  sha256 "0f4ee4e1ca79c07081e395baee7f21607901a36033665094dc27cef38cef09bf"

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

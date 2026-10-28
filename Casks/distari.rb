cask "distari" do
  version "1.5.4,3055"
  sha256 "988ee10c882f63b44f0235fb63eb9fc89e8d06228719d4c95409a7617c55fad2"

  url "https://downloads.distari.com/macos/distari-#{version.csv.first}+#{version.csv.second}-macos-universal.dmg"
  name "Distari"
  desc "Research paper library with AI summaries"
  homepage "https://distari.com/"

  livecheck do
    url "https://downloads.distari.com/macos/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Distari.app"

  uninstall quit: "com.distari.app"

  # Distari's own files only. Sign-in tokens and cache keys stay in the Keychain.
  zap trash: [
    "~/Library/Application Scripts/com.distari.app",
    "~/Library/Caches/com.distari.app.sparkle",
    "~/Library/Containers/com.distari.app",
  ]
end

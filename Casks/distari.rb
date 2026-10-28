cask "distari" do
  version "1.5.5,3059"
  sha256 "479030ab061939c3955739a8d9dab77aabe24fbe698da53027fe0e4903918599"

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

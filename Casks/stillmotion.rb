cask "stillmotion" do
  version "1.0"
  sha256 "e66c66dc829662b2c8664b516bd199229a54c32a016fc290413a8f8dcef1d08b"

  url "https://github.com/pergioa/StillMotion/releases/download/v#{version}/StillMotion-#{version}.dmg"
  name "StillMotion"
  desc "Play independent video wallpapers on connected displays"
  homepage "https://github.com/pergioa/StillMotion"

  depends_on macos: :sonoma

  app "StillMotion.app"

  zap trash: "~/Library/Containers/com.stillmotion.app"

  caveats <<~EOS
    StillMotion is unsigned and not notarized. If macOS blocks the first launch,
    right-click StillMotion in Applications, choose Open, and confirm.
  EOS
end

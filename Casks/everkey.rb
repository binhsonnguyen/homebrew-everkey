cask "everkey" do
  version "0.2.0"
  sha256 "4ee586b611415622b834a339a1c8da2d9bf0912b0f4dd7fb57b61b38c4777e31"

  url "https://github.com/binhsonnguyen/Everkey/releases/download/v#{version}/Everkey-#{version}.dmg",
      verified: "github.com/binhsonnguyen/Everkey/"
  name "Everkey"
  desc "Bộ gõ tiếng Việt cho macOS (Simple Telex)"
  homepage "https://github.com/binhsonnguyen/Everkey"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Everkey.app"

  zap trash: [
    "~/Library/Preferences/com.everkey.app.plist",
  ]

  caveats <<~EOS
    Everkey ký self-signed (không qua Apple notarization). Nếu cài KHÔNG kèm
    --no-quarantine, lần đầu mở app hãy vào:
      System Settings → Privacy & Security → Security → Open Anyway

    Sau đó cấp quyền tại:
      System Settings → Privacy & Security → Accessibility
  EOS
end

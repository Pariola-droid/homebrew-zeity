cask "zeity-dev" do
  version "1.1.0"
  sha256 "a4ffbee2b22e6fdd06f987a47fcd30c0253ec18afa3f0eb16f9b22c85ed62a01"

  url "https://github.com/Pariola-droid/homebrew-zeity/releases/download/v#{version}/Zeity-v#{version}.zip"
  name "Zeity (Dev)"
  desc "Global timezone companion — track your friends' local times from the menu bar"
  homepage "https://github.com/Pariola-droid/zt-mac"

  app "Zeity.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Zeity.app"]
  end

  zap trash: [
    "~/Library/Group Containers/group.com.zeity.mac",
  ]
end

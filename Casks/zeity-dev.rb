cask "zeity-dev" do
  version "1.1.0"
  sha256 "c29027775ed6c8e853c6def9512ff873e4c1b5cf258b94b9884ecc1b46d10c89"

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

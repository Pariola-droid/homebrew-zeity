cask "zeity-dev" do
  version "1.3.0"
  sha256 "62a6327962b873441d8225db36c6199abc365ecfea443ff9acf0df7c37fa5088"

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

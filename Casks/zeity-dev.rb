cask "zeity-dev" do
  version "1.2.0"
  sha256 "7de49224a085fd7d395494376009a1660caa348eaaee0a245543a198d317448d"

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

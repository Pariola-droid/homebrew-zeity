cask "zeity-dev" do
  version "1.0-dev"
  sha256 "a03035212099f9a17f8d4bcff23493f1863c2365950e0c7c57f25d0e05d5d535"

  url "https://github.com/Pariola-droid/homebrew-zeity/releases/download/v#{version}/Zeity-v1.0.zip"
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

cask "clashx-pro" do
  version "1.31.2.1"
  sha256 "f0ce1ae36ab256ec58b136c74687eee2d689fdc662fdd1ba6973d49817f3c810"

  # the domain of url may vary! fix the comment when updating this file.
  # appcenter-filemanagement-distrib1ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib5ede6f06e.azureedge.net/591550b0-9ccd-4877-8e33-b1c003c34431/ClashX.dmg?sv=2019-02-02&sr=c&sig=LUO9C2zsrb3dbttUOyLGJg4tnQtLH2q%2B760vKZ3Ze1A%3D&se=2021-01-07T21%3A02%3A54Z&sp=r&download_origin=appcenter"
  name "ClashX Pro"
  desc "Rule-based custom proxy with GUI based on clash with pro clash core"
  homepage "https://install.appcenter.ms/users/clashx/apps/clashx-pro/distribution_groups/public"

  app "ClashX Pro.app"

  zap trash: [
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.west2online.ClashXPro",
    "~/Library/Caches/com.west2online.ClashXPro",
    "~/Library/Logs/ClashX Pro",
    "~/Library/Preferences/com.west2online.ClashXPro.plist",
    "~/Library/Application Support/com.west2online.ClashXPro",
  ]
end

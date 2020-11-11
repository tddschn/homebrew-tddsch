cask "clashx-pro" do
  version "1.30.3.2"
  sha256 "a6fd4a78d34001f47caa7e5d83617d2707ecb88861a0d5f3dcd3930be3fb245f"

  # the domain of url may vary! fix the comment when updating this file.
  # appcenter-filemanagement-distrib1ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib1ede6f06e.azureedge.net/e2e19489-d0ed-49f4-b3db-b840dae771ba/ClashX.dmg?sv=2019-02-02&sr=c&sig=LX7u0TGJFRvSyAUJv9e6%2BouweZY36eOtB8NsrqgbHbQ%3D&se=2020-11-11T22%3A46%3A56Z&sp=r&download_origin=appcenter"
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

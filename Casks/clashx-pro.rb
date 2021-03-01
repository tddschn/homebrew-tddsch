cask "clashx-pro" do
  version "1.40.0.1"
  sha256 "4f9fb11bf8118478e1f3e52c951cc3f6a6e618c043377f6e0e543656344f59dd"

  # the domain of url may vary! fix the comment when updating this file.
  # appcenter-filemanagement-distrib1ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib1ede6f06e.azureedge.net/3da8d480-6af1-4498-9696-276ec3a3cd3f/ClashX.dmg?sv=2019-02-02&sr=c&sig=mA5aMwcIp3XeBLOHNJbH5mm%2FvuHqWJXhcrMz8J8eiZs%3D&se=2021-03-02T00%3A27%3A58Z&sp=r&download_origin=appcenter"
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

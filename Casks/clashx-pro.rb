cask 'clashx-pro' do
  version '1.30.2.2'
  sha256 '2d61622b830efdb21be2e696819e3dad5b930d6c9b13d67b3a3b763a34a4aa73'

  # appcenter-filemanagement-distrib2ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url 'https://appcenter-filemanagement-distrib5ede6f06e.azureedge.net/cd8d2455-8345-4b09-8605-1134daec945b/ClashX.dmg?sv=2019-02-02&sr=c&sig=jKa7ZZCk4MnG38rfRXBmCluhcHy8B2zrO1YMsFWIUwc%3D&se=2020-10-12T19%3A39%3A08Z&sp=r&download_origin=appcenter'
  name 'ClashX Pro'
  homepage 'https://install.appcenter.ms/users/clashx/apps/clashx-pro/distribution_groups/public'

  app 'ClashX Pro.app'

  zap trash: [
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.west2online.ClashXPro',
               '~/Library/Caches/com.west2online.ClashXPro',
               '~/Library/Logs/ClashX Pro',
               '~/Library/Preferences/com.west2online.ClashXPro.plist',
               '~/Library/Application Support/com.west2online.ClashXPro',
             ]
end

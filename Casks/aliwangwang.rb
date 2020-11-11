cask "aliwangwang" do
  version "8.00.44"
  sha256 "06de2d82ffb839350ee54bd16227f910b7709563f86ceb67d32ff0e050fb6515"

  # gw.alipayobjects.com was verified as official when first introduced to the cask
  url "https://gw.alipayobjects.com/os/rmsportal/cyScBAsMUTXvjUQZulQN.dmg"
  name "AliWangwang"
  desc "Taobao companion"
  homepage "https://alimarket.taobao.com/markets/qnww/portal-group/ww/index"

  app "AliWangwang.app"

  zap trash: [
    "~/Library/Caches/com.taobao.Aliwangwang",
    "~/Library/Containers/com.taobao.Aliwangwang",
    "~/Library/Preferences/com.taobao.Aliwangwang.plist",
    "~/Library/Saved Application State/com.taobao.Aliwangwang.savedState",
    "~/Library/WebKit/com.taobao.Aliwangwang",
    "~/Library/Caches/com.taobao.Aliwangwang",
    "~/Library/Containers/com.taobao.Aliwangwang",
    "~/Library/Preferences/com.taobao.Aliwangwang.plist",
    "~/Library/Saved Application State/com.taobao.Aliwangwang.savedState",
    "~/Library/WebKit/com.taobao.Aliwangwang",
  ]
end

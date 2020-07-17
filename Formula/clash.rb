class Clash < Formula
  desc "A rule-based tunnel in Go."
  homepage "https://github.com/Dreamacro/clash"
  url "https://github.com/Dreamacro/clash/archive/v1.0.0.tar.gz"
  sha256 "eefd9fb6c413a4eca7999eb4dd1d760a5bfd61100310390ba9c24b64f0962f28"
  license "GPL-3.0"
  head "https://github.com/Dreamacro/clash.git"

  depends_on "go" => :build

  # bottle do
  #   cellar :any_skip_relocation
  #   sha256 "eefd9fb6c413a4eca7999eb4dd1d760a5bfd61100310390ba9c24b64f0962f28"
  # end

  # def install
  #   system "go", "get" 
  # end
  def install
    system "gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>RunAtLoad</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/clash</string>
      </array>
    </dict>
  </plist>
  EOS
  end

  test do
    system "#{bin}/clash", "-v"
  end

end

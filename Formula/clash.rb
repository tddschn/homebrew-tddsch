class Clash < Formula
  desc "A rule-based tunnel in Go."
  homepage "https://github.com/Dreamacro/clash"
  url "https://github.com/Dreamacro/clash/releases/download/premium/clash-darwin-amd64-2020.09.27.gz"
  sha256 "ce0091456dbaf148622d8c8a6789a45c61fde1396bf880309b59f1ca860daf97"
  license "proprietary"


  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
  end

  test do
    system "clash" "-v"
  end
end

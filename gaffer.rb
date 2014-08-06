require "formula"

class Gaffer < Formula
  homepage "https://github.com/jingweno/gaffer"
  url "https://github.com/jingweno/gaffer/releases/download/0.0.1/gaffer-0.0.1-dist.zip"
  sha1 "a35fc031f2a58b8ac6a591e09a8a80e817afd309"

  def install
    rm_f Dir["bin/*.cmd"]
    libexec.install %w[bin lib]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
  end

  def caveats; <<-EOS.undent
    Requires Java 1.6.0 or greater.

    For more details:
      https://github.com/jingweno/gaffer
    EOS
  end

  test do
    assert_equal "0.0.1", `#{bin}/gaffer version`
  end
end

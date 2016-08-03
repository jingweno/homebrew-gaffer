require "formula"

class Gaffer < Formula
  homepage "https://github.com/jingweno/gaffer"
  url "https://github.com/jingweno/gaffer/releases/download/0.0.1/gaffer-0.0.1-dist.zip"
  sha256 "c6811a1a09faca93e9b4be61be59efe19207807d91d5be6b425ceaa037165fae"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install %w[bin lib]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats; <<-EOS.undent
    Requires Java 1.7.0 or greater.

    For more details:
      https://github.com/jingweno/gaffer
    EOS
  end
end

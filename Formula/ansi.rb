class Ansi < Formula
  desc "CLI ANSI Code Generator"
  homepage "https://github.com/fidian/ansi"
  url "https://github.com/fidian/ansi.git"
  version "3.0.1"
  license :public_domain

  def install
    bin.install "ansi"
  end

  test do
    assert_equal "\e[31mRED\e[39m", shell_output("ANSI_FORCE_SUPPORT=y #{bin}/ansi --red RED").strip
  end
end

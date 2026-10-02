class Mads < Formula
  desc "Multi-Agent Distributed System"
  homepage "https://github.com/pbosetti/MADS"
  url "https://github.com/pbosetti/MADS/releases/download/v2.5.0/Mads-v2.5.0-Darwin-universal.tar.gz"
  sha256 "6646e07b80dbf4ce9b48cd3e98a4b0b3784486ec627b8e035b61ba77dd039c8d"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    # Tarball layout: usr/local/{bin,lib,include,share,python}. MADS resolves its
    # prefix from the executable location, so keep the tree together in libexec.
    libexec.install Dir["usr/local/*"]
    bin.install_symlink Dir[libexec/"bin/*"]

    # Configuration and keys live in HOMEBREW_PREFIX/etc/mads so that they
    # survive upgrades (MADS looks for them in <prefix>/etc).
    (etc/"mads").mkpath
    ln_s etc/"mads", libexec/"etc"
  end

  def caveats
    <<~EOS
      Configuration and keys are kept in:
        #{etc}/mads

      Plugins and custom agents installed under #{opt_libexec} link against this
      version of libMadsCore and are NOT preserved on upgrade. After
      `brew upgrade mads`, rebuild and reinstall them (see `mads plugin --help`).
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mads --version")
    assert_equal libexec.realpath.to_s, shell_output("#{bin}/mads --prefix").strip
    assert_equal (etc/"mads").realpath.to_s, (libexec/"etc").realpath.to_s
  end
end

class Complot < Formula
  desc "Real-time plotting from the shell, loosely inspired by the grammar of graphics"
  homepage "https://github.com/pbosetti/complot"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.1/complot-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "82d245d0ac8355204a59bc838c4a7ae37fbd4bde96d6467b5d67660df1a84c54"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.1/complot-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "48eac06fbe7584a6ba4f69a9c1c109b3238f3f8b8a62947558a20ac64eda0c03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.1/complot-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b29a62300ae7d334b14ac77d1d7518b4957c7be3cae348cb779b1ec5ff79c14e"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.1/complot-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37e3a9ebf503b2f13d5b7e2fdd027e281aa8aa77b7787a690570e6176a4b8c1c"
    end
  end

  def install
    bin.install "complot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/complot -V")
  end
end

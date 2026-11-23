class Complot < Formula
  desc "Real-time plotting from the shell, loosely inspired by the grammar of graphics"
  homepage "https://github.com/pbosetti/complot"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.0/complot-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "58dbe96ef8a45413a599aadcc0b255fd8b53f6a22a09487a9332ea5628bca26a"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.0/complot-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "925f609eec5806834439b969e65fafc2a79daf7f1e84ba8d4211925c4483a153"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.0/complot-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10ae3a63b77736b8ab8e13879f98566e9d202dc87f775207cc29d6930ba017ab"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.0/complot-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f080be6ec9abecb763ec70f52bf02f33d74332eb1ceb0c97e4ba561d9aa20cd1"
    end
  end

  def install
    bin.install "complot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/complot -V")
  end
end

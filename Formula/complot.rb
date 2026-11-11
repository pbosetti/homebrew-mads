class Complot < Formula
  desc "Real-time plotting from the shell, loosely inspired by the grammar of graphics"
  homepage "https://github.com/pbosetti/complot"
  version "0.2.3"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.3/complot-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "567a8098dc36b848081d5d65146b9abd559499944089cb738569cd9434a97cc2"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.3/complot-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "d18b99710c161cfa24694fdbf514cd9d2f46e950f0599537142517e857785332"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.3/complot-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f87af5aeb9764aea923bc8797dcafbfe50a6f0d508faff7489bae313b603f19"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.3/complot-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2e9c86a386470509c418b933fe28a169d7468bed1fa336527a96896ceb297de"
    end
  end

  def install
    bin.install "complot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/complot -V")
  end
end

class Complot < Formula
  desc "Real-time plotting from the shell, loosely inspired by the grammar of graphics"
  homepage "https://github.com/pbosetti/complot"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.1/complot-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "0c99f064e18468057b97e4484b5047aa0369cbef1d8cb3b070e5189b0bd5f47f"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.1/complot-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "6e0dff6487d3245425a8bfbc6c0396ed04afb26c93e748c1b96b695f7166e7b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.1/complot-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "504626eb3dcb0019cdb1ec5494995ed2b0ea328190051c5b9f87d2e7c3a2cb8e"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.3.1/complot-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e7b7c51c4b0036b5d35d1993a3933a18cdf5b99e6d2aedab48575102e5278f8"
    end
  end

  def install
    bin.install "complot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/complot -V")
  end
end

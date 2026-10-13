class Complot < Formula
  desc "Real-time plotting from the shell, loosely inspired by the grammar of graphics"
  homepage "https://github.com/pbosetti/complot"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.1.0/complot-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bba771edaf4550b2b0fdbc07e1b42005486e5f75f8c6a73addd228a6f734b5de"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.1.0/complot-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "ef99521ce27815e4a7e0a828506ce99077109c3be8f273333177e7ea8be7f40a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.1.0/complot-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8307c6ef6e4bb06aa5250b64614707158310c818117ca21592bb0e2048db4be2"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.1.0/complot-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adaa15deebf58ad11161e26400dd489187043a17b82e01e308481dc07115465f"
    end
  end

  def install
    bin.install "complot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/complot -V")
  end
end

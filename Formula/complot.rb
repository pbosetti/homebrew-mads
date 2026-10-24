class Complot < Formula
  desc "Real-time plotting from the shell, loosely inspired by the grammar of graphics"
  homepage "https://github.com/pbosetti/complot"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.0/complot-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a40ce6d58352c43b1c1136cae74ef63bf9ba45aa912077c2cbce1ef57f49904"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.0/complot-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "fc71cd2db3d59197b3091a11f6542d6fdf1a2971fe0ac4f137847e0f67fea5b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.0/complot-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c57956b481032276ddb9ce65a120977173ef47df669c6fa986f4f037954fa80"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.0/complot-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a98859a842450405608528bfbd41a873423d66b4d754eef8b835ba3f0246decf"
    end
  end

  def install
    bin.install "complot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/complot -V")
  end
end

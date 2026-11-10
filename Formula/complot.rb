class Complot < Formula
  desc "Real-time plotting from the shell, loosely inspired by the grammar of graphics"
  homepage "https://github.com/pbosetti/complot"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.2/complot-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "17554ae28489bcf9cb0937a658109355de67a628fa09dfd63c8eba9f89e54d54"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.2/complot-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "82a2a725a9b467df7e3735e5e3e3b40a7f9010713545308b4b3df59853b555e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.2/complot-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a7449851c8ea7e1d91e43404ba0f70c41c021ada28729b848b65006382bda31"
    end
    on_intel do
      url "https://github.com/pbosetti/complot/releases/download/v0.2.2/complot-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ef918b240b4008d8e400baaf81141d88cada8297f1461f6cd9f1773b71a69b4"
    end
  end

  def install
    bin.install "complot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/complot -V")
  end
end

class Zigc < Formula
  desc "C/C++ project & package manager powered by Zig's build system"
  homepage "https://github.com/nathanjmorton/zigc"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-macos.tar.gz"
      sha256 "c9744e902990f1c322adb46849cdccc7a5d6b4de87c7b35eddd8142f4ee32a91"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-macos.tar.gz"
      sha256 "7705cb6a245da7dd201734400d4682bd21429c0f322b7e21e14945427a2c110a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-linux-gnu.tar.gz"
      sha256 "117ca261964f267971ce61a98c1ce53903029fc5c4e3c8b0b94632e3727a1c3e"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-linux-gnu.tar.gz"
      sha256 "bded2ca25efb971ce699fe3a95472f22fd0185d56b4d1d4a1c2e6e81acc5d0ab"
    end
  end

  def install
    bin.install "zigc"
  end

  test do
    system "#{bin}/zigc", "help"
  end
end

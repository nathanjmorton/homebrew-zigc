class Zigc < Formula
  desc "C/C++ project & package manager powered by Zig's build system"
  homepage "https://github.com/nathanjmorton/zigc"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-macos.tar.gz"
      sha256 "1178720d13c416fd9a83933f572fb1723e883e66169855337b833b98894329ad"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-macos.tar.gz"
      sha256 "b7a64d43e1e8c95299932499131b47828d49697e8e58359b66fd1ed12f9fe68b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-linux-gnu.tar.gz"
      sha256 "1760d049ddaf89137ef66d81952868b97c7d4096e25430c1ca83fc2762466786"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-linux-gnu.tar.gz"
      sha256 "d9b600f362c229c7334ee1c8f228791614449f406f4718eac96d50b4d90aff28"
    end
  end

  def install
    bin.install "zigc"
  end

  test do
    system "#{bin}/zigc", "help"
  end
end

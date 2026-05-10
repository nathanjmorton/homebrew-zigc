class Zigc < Formula
  desc "C/C++ project & package manager powered by Zig's build system"
  homepage "https://github.com/nathanjmorton/zigc"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-macos.tar.gz"
      sha256 "d2247a12f4089bfca6c2ba7552c7dc8cb9e5a637c41b4c45969182cfdd4fbeac"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-macos.tar.gz"
      sha256 "2d5e067c12f0febb3485d19b79c6e1396c74a48e33352d09e70ca793b87d641d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-linux-gnu.tar.gz"
      sha256 "9f9d2dc16e8b5bb36cf1f545778197eb60fac334668a817ccfd30e7a4bc98f66"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-linux-gnu.tar.gz"
      sha256 "4b3de8bfbd1a8495c025e501022dc49f20bcd1344fff2ce45dc81cc0d90fdde5"
    end
  end

  def install
    bin.install "zigc"
  end

  test do
    system "#{bin}/zigc", "help"
  end
end

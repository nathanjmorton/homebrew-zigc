class Zigc < Formula
  desc "C/C++ project & package manager powered by Zig's build system"
  homepage "https://github.com/nathanjmorton/zigc"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-macos.tar.gz"
      sha256 "988fb20dab77527b2ac65f09774dccdc85bdbf6bf4956d8b9d96ef1ee2811cd6"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-macos.tar.gz"
      sha256 "e9edf79604b320f693293c12e83e72a33128c904629bb1582a42e1189193f3e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-aarch64-linux-gnu.tar.gz"
      sha256 "5787bdfdfd4b8e2d4e831c7101954174ee1b1fb27487662fe1534afe06dad069"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigc/releases/download/v#{version}/zigc-x86_64-linux-gnu.tar.gz"
      sha256 "3b5957d8ba7221aa7600314f977062f23f332a96c692bfbc16a12bfac3ccaef7"
    end
  end

  def install
    bin.install "zigc"
  end

  test do
    system "#{bin}/zigc", "help"
  end
end

class Vanish < Formula
  desc "Zero-knowledge self-destructing links. E2E encrypted with AES-256-GCM."
  homepage "https://vanish.link"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v0.1.0/vanish-macos-arm64"
      sha256 "2b5f3cfeb7f3fa8367bd3819c13c33d99edd58ccc9a0f2001618af3864836e1a"

      def install
        bin.install "vanish-macos-arm64" => "vanish"
      end
    else
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v0.1.0/vanish-macos-x64"
      sha256 "bb4f55a59e51869a82d3766188056b3bb217c519fdce8d9682d968941dcdb696"

      def install
        bin.install "vanish-macos-x64" => "vanish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v0.1.0/vanish-linux-arm64"
      sha256 "be66f46b5728cb2f0c6e56ee1bb36a218975a420fb7ea09b2dd01b7cc605da2c"

      def install
        bin.install "vanish-linux-arm64" => "vanish"
      end
    else
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v0.1.0/vanish-linux-x64"
      sha256 "cc3d3374a515f9d7a942f2ac474087fa6b27684ea173fa8576e92ccda9ff2ee9"

      def install
        bin.install "vanish-linux-x64" => "vanish"
      end
    end
  end

  test do
    assert_match "vanish", shell_output("#{bin}/vanish --help")
  end
end

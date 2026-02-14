class Vanish < Formula
  desc "Zero-knowledge self-destructing links. E2E encrypted with AES-256-GCM."
  homepage "https://vanish.link"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v#{version}/vanish-macos-arm64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vanish-macos-arm64" => "vanish"
      end
    else
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v#{version}/vanish-macos-x64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vanish-macos-x64" => "vanish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v#{version}/vanish-linux-arm64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vanish-linux-arm64" => "vanish"
      end
    else
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v#{version}/vanish-linux-x64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "vanish-linux-x64" => "vanish"
      end
    end
  end

  test do
    assert_match "vanish", shell_output("#{bin}/vanish --help")
  end
end

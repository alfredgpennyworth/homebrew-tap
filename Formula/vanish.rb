class Vanish < Formula
  desc "Zero-knowledge self-destructing links. E2E encrypted with AES-256-GCM."
  homepage "https://vanish.link"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v0.1.0/vanish-macos-arm64"
      sha256 "3a34905cb5b71f9513e241582309d2a70098ec3acd50eb2fd3968472682d8f85"

      def install
        bin.install "vanish-macos-arm64" => "vanish"
      end
    else
      url "https://github.com/alfredgpennyworth/vanish-link/releases/download/v0.1.0/vanish-macos-x64"
      sha256 "b70c49634328e4e0210ad983aa7bc5b8dc5740121b6e60a4d7199ebeefb04735"

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
      sha256 "c2c7c44d8cc9541d0e95734aeeba13ab5dfe8cb7e8bd84e0dfe4437226b76dae"

      def install
        bin.install "vanish-linux-x64" => "vanish"
      end
    end
  end

  test do
    assert_match "vanish", shell_output("#{bin}/vanish --help")
  end
end

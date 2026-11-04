class Agentstory < Formula
  desc "Lightweight agent-memory search: index and hand off sessions across coding agents"
  homepage "https://github.com/yongvae/agentstory"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.4.0/agentstory-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "99b16aa2d4ba9ada285a3384882922188cb1a411e979831b22c9ec5a66579f72"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.4.0/agentstory-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "53f59d385ec37385fedb1ff46ad737386b87e1501f146d7645fcd0c4a15f1821"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.4.0/agentstory-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3f112b1f4cb4d16995322cf28ec3bf937ef3407dc52b103b3017d4a7fb695d0"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.4.0/agentstory-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d45ba83737b7479b55a68e0b16ad0123529579d556b1f168cee526f82ed3614f"
    end
  end

  def install
    bin.install "agentstory", "ags"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentstory --version")
    assert_match "claude-code", shell_output("#{bin}/ags agents")
  end
end

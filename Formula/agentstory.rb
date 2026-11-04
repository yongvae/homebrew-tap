class Agentstory < Formula
  desc "Lightweight agent-memory search: index and hand off sessions across coding agents"
  homepage "https://github.com/yongvae/agentstory"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.5.0/agentstory-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "4acef917be1c8b0fa1e0b16bb16b67b9980992f367a4c394bf6b87a2ea0fd971"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.5.0/agentstory-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "c85216ab34896b3a8cb9a732e8a73dc9a78ec67f3fd7989862fa4df9048e27dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.5.0/agentstory-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7920f0ecc18b562afcf71f5e13cb4ac0ec69ff342dd6836b250d1f461dc82e98"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.5.0/agentstory-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4ed0209e20b4e5ffc3945bb367428d66ecced85c3de93473a653a065dc4d3db"
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

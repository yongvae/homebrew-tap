class Agentstory < Formula
  desc "Lightweight agent-memory search: index and hand off sessions across coding agents"
  homepage "https://github.com/yongvae/agentstory"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.0/agentstory-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0e6b17701a6fee8d15f745fc537ba4ea4dba8c2fcf00ad3dbc56ce8e98886f45"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.0/agentstory-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "10fd21b9525d471c674d2d003fe5f969e841ba6629f555cec8976a0eb509b663"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.0/agentstory-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "257b345a7ba21e75b0f83326958555a6c03438dff63c21be6cef02b01d1b042c"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.0/agentstory-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a38cfa801353f18eda92e16100b3cdb0cb6d0069e392cf38724e79fd89c613dd"
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

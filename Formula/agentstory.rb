class Agentstory < Formula
  desc "Lightweight agent-memory search: index and hand off sessions across coding agents"
  homepage "https://github.com/yongvae/agentstory"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.1/agentstory-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "e83ed93fd9b7ec82b86185c56c7407a1dd8b886b9110e7ab27bd5786bb639bcb"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.1/agentstory-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "e57a7f001b80d9bb1a73f02ceff64ce9ab175102c6abae3ccdf77949d2770622"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.1/agentstory-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d50a8ed5d2b1f6d00beb3be604b84e61f74de8f30cf5a8af4a6cc91fdd288dd"
    end
    on_intel do
      url "https://github.com/yongvae/agentstory/releases/download/v0.3.1/agentstory-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d9b4a890c65627fcc0c3c3346bee34b0c67cbc210c55dc15496f1a04edba60c"
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

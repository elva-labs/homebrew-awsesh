class Awsesh < Formula
  desc "AWS Session Manager CLI"
  homepage "https://github.com/elva-labs/awsesh"
  license "MIT"

  os     = OS.mac? ? "darwin" : "linux"
  arch   = Hardware::CPU.intel? ? "amd64" : "arm64"
  binary = "sesh-#{os}-#{arch}"

  url "https://github.com/elva-labs/awsesh/releases/download/v.0.1.2/#{binary}"
  sha256 "__SHA_#{os.upcase}_#{arch.upcase}__"

  def install
    os     = OS.mac? ? "darwin" : "linux"
    arch   = Hardware::CPU.intel? ? "amd64" : "arm64"
    binary = "sesh-#{os}-#{arch}"

    bin.install binary => "sesh"
  end

  test do
    system "#{bin}/sesh", "--version"
  end
end

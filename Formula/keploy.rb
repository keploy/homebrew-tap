class Keploy < Formula
  desc "API testing toolkit that records real traffic as tests and mocks"
  homepage "https://keploy.io"
  version "3.8.59"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_arm64"
  sha256 "7dc6492dcb2a7451e17c2ce67b3384937b90ad568d0390fcc10c9992fd9e3b88"
  license :cannot_represent

  depends_on :macos
  depends_on arch: :arm64

  conflicts_with "keploy",
    because: "both install a `keploy` binary; use one or the other"

  def install
    bin.install "enterprise_darwin_arm64" => "keploy"
  end

  def caveats
    <<~EOS
      ▶ Next step:  keploy login  →  then  keploy mcp-install
        Docs:       https://keploy.io/docs
    EOS
  end

  test do
    assert_match "keploy", shell_output("#{bin}/keploy --help")
  end
end

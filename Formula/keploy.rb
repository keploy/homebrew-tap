class Keploy < Formula
  desc "API testing toolkit that records real traffic as tests and mocks"
  homepage "https://keploy.io"
  version "3.8.97"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_arm64"
  sha256 "b84118952e72480f3a99dbe736e7c11d09e831f06675f67ed4027089b370d4a9"
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

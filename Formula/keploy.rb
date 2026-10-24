class Keploy < Formula
  desc "API testing toolkit that records real traffic as tests and mocks"
  homepage "https://keploy.io"
  version "3.8.83"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_arm64"
  sha256 "4691f8b22f7506a14146f1efe96e1834f9c1fab582f81ffa406209b4d8d244a5"
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

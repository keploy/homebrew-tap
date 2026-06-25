class Keploy < Formula
  desc "Keploy Enterprise — API testing toolkit (free Community Edition tier by default)"
  homepage "https://keploy.io"
  version "3.5.58"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_all"
  sha256 "fe81a4a187dee97d54fd96cf97c1f8523112f67ebfbc43f50e18930449005174"
  license :cannot_represent

  depends_on :macos

  conflicts_with "keploy",
    because: "both install a `keploy` binary; use one or the other"

  def install
    bin.install "enterprise_darwin_all" => "keploy"
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

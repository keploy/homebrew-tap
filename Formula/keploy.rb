class Keploy < Formula
  desc "Keploy Enterprise — API testing toolkit (free Community Edition tier by default)"
  homepage "https://keploy.io"
  version "3.5.83"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_all"
  sha256 "8c1adff1d5b7b2eba0b596684f5889ee5f5a3a3e4c81af2993ae584b128679fe"
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

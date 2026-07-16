class Keploy < Formula
  desc "Keploy Enterprise — API testing toolkit (free Community Edition tier by default)"
  homepage "https://keploy.io"
  version "3.5.91"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_all"
  sha256 "419ef7159e1ee6b6ff73e367d0bad945eaab0e46b3c16aafb9f84e40a3e35085"
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

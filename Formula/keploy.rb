class Keploy < Formula
  desc "Keploy Enterprise — API testing toolkit (free Community Edition tier by default)"
  homepage "https://keploy.io"
  version "3.5.81"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_all"
  sha256 "f2892807ce9999b0f78858037a3a616bdc94da6c5285d94c49f55103db383b70"
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

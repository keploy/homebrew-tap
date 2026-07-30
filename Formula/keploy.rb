class Keploy < Formula
  desc "Keploy Enterprise — API testing toolkit (free Community Edition tier by default)"
  homepage "https://keploy.io"
  version "3.6.7"
  url "https://keploy.io/ent/dl/#{version}/enterprise_darwin_all"
  sha256 "e52895915a38c93c3f921d0611784f5c48364849c3651237fb7a4b4cfb650b69"
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

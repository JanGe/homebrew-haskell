require "language/haskell"

class Xdcc < Formula
  include Language::Haskell::Cabal

  desc "Wget-like utility for retrieving files from XDCC bots on IRC"
  homepage "https://github.com/JanGe/xdcc"
  url "https://hackage.haskell.org/package/xdcc-1.1.3/xdcc-1.1.3.tar.gz"
  sha256 "b34b1b10c8fc92347b0713b5b2d1ebb7450984fd7dd284d8501c291e016db49e"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/xdcc", "--help"
  end
end

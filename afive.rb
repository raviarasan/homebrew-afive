# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Afive < Formula
  desc "four"
  homepage "bdiplus.com"
  url "https://github.com/raviarasan/homebrew-afour/archive/refs/tags/v2.0.tar.gz"
  sha256 "0d7d22e2922fd13659ef35015ddf5e9df3d89541e72ceeb3beacd470dcd623f1"
  version "2.0"
  license "MIT"

  # depends_on "cmake" => :build
  depends_on "python" => :run
  depends_on "bash"

  def install
    bin.install "r1.py"
    bin.install "r.sh"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-afour`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "r.sh"
  end
end

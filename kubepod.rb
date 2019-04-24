# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kubepod < Formula
  desc "Search pods faster in kubectl"
  homepage ""
  url "https://github.com/kdthanvi/kubepod/archive/v1.0.0.tar.gz"
  sha256 "84dbe84e83d9d1445631978f54f93c3d9d592e518b2d52848413696674cb56e2"
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
                         # "--disable-dependency-tracking",
                         # "--disable-silent-rules",
                         # "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
   #system "make", "install" # if this fails, try separate make/make install steps
	bin.install "kubepod"
  end

  #test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kubepod`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
   #system "false"
  #end
end

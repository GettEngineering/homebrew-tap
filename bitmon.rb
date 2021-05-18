class Bitmon < Formula
    desc "Bitmon is a CLI tool for monitoring Bitrise builds developed by the team at Gett"
    url "https://github.com/GettEngineering/bitmon/archive/refs/tags/0.1_inital.tar.gz"
    version "0.1.0"
    sha256 "fc803daa6d19c53eac4426fba1ba9a6f1e403f4d0e6d97e66d4ad8ff41969a07"

    depends_on "go"

    def install
      ENV["GOPATH"] = buildpath
      ENV["GO111MODULE"] = "on"
      ENV["GOFLAGS"] = "-mod=vendor"
      ENV["PATH"] = "#{ENV["PATH"]}:#{buildpath}/bin"
      (buildpath/"src/github.com/GettEngineering/bitmon").install buildpath.children
      cd "src/github.com/GettEngineering/bitmon" do
        system "go", "build", "-o", bin/"bitmon", "."
      end
    end
  end

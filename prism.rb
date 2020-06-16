class Prism < Formula
    desc "Gett's Design System code generator. Use Zeplin Styleguides as your R&D's Single Source of Truth."
    homepage "https://prism.tools"
    url "https://github.com/GettEngineering/Prism/archive/0.4.0.tar.gz"
    version "0.4.0"
    sha256 "4bb0f3f9f561b9a23083d8042de7e8dc2038c7e142bc64d3f42aff0870d75620"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/prism'
    end
end

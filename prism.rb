class Prism < Formula
    desc "Gett's Design System code generator. Use Zeplin Styleguides as your R&D's Single Source of Truth."
    homepage "https://prism.tools"
    url "https://github.com/GettEngineering/Prism/archive/0.4.1.tar.gz"
    version "0.4.1"
    sha256 "5664c63e697b1953de5ff4271fc84f94ca624a30a054c61fcd9837d4044b54ce"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/prism'
    end
end

class Prism < Formula
    desc "Gett's Design System code generator. Use Zeplin Styleguides as your R&D's Single Source of Truth."
    homepage "https://prism.tools"
    url "https://github.com/GettEngineering/Prism/archive/0.2.tar.gz"
    version "0.2"
    sha256 "95467a99b3fe1ed7351f774f8db675242c6154e56e7b64f2ccee1883a99facd9"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/prism'
    end
end

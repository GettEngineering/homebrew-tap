class Prism < Formula
    desc "Gett's Design System code generator. Use Zeplin Styleguides as your R&D's Single Source of Truth."
    homepage "https://prism.tools"
    url "https://github.com/GettEngineering/Prism/archive/0.3.0.tar.gz"
    version "0.3"
    sha256 "a2efdafba5569c5b0ca57c0387b92c5e030a4afd7d92663c42ab01b0e471a19e"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--enable-pubgrub-resolver",
            "--disable-sandbox"
        bin.install '.build/release/prism'
    end
end

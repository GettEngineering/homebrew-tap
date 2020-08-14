class Prism < Formula
    desc "Gett's Design System code generator. Use Zeplin Styleguides as your R&D's Single Source of Truth."
    homepage "https://prism.tools"
    url "https://github.com/GettEngineering/Prism/archive/0.5.0.tar.gz"
    version "0.5.0"
    sha256 "116ac1a7dd8b62804b8525615b8f71b1b4636c6bd7b78e1b418bc1b6f7aca982"

    def install
        system "swift", "build",
            "--configuration", "release",
            "--disable-sandbox"
        bin.install '.build/release/prism'
    end
end

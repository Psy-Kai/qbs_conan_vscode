from conans import ConanFile, CMake, tools
from conan.tools.qbs import QbsProfile


class QaDQtProjectConan(ConanFile):
    name = "Qbs_Conan_VSCode"
    version = "0.0.0"
    settings = "os", "compiler", "build_type", "arch"
    build_requires = [
        # "qt/5.15.2",
        "spdlog/1.8.5",
    ]

    def generate(self):
        tc = QbsProfile(self)
        tc.generate()
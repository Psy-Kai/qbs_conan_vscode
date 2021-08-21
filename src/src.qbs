Project {
    CppApplication {
        name: "qcv"
        qbs.profile: "conan_toolchain_profile"

        files: [
            "qcv/**/*.cpp",
        ]

        cpp.cxxLanguageVersion: "c++17"
        
        // Depends { name: "Qt.core" }
        Depends { name: "spdlog" }
    }
}

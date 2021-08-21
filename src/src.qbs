Project {
    CppApplication {
        name: "qcv"
        // qbs.profile: "default"

        files: [
            "qcv/**/*.cpp",
        ]

        cpp.cxxLanguageVersion: "c++17"
        
        // Depends { name: "Qt.core" }
        Depends { name: "spdlog" }
    }
}

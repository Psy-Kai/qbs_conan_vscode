import qbs.FileInfo
import qbs.Probes

Project {
    readonly property var _conanJson: conan.json
    readonly property var _conanDependencies: conan.dependencies 

    references: [
        FileInfo.joinPaths(conan.generatedFilesPath, "conan_toolchain.qbs"),
        // "profiles/default.qbs",

        "src/src.qbs",
        FileInfo.joinPaths(conan.generatedFilesPath, "conanbuildinfo.qbs"),
    ]

    Product {
        name: "misc"
        condition: false
        files: [
            "conanfile.txt",
        ]
    }

    Probes.ConanfileProbe {
        id: conan
        conanfilePath: FileInfo.joinPaths(sourceDirectory, "conanfile.py")
        generators: "qbs"
        additionalArguments: "-b=missing"
    }
}
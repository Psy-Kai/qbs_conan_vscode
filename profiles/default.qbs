import qbs.Probes

Project {
    Probes.BinaryProbe {
        id: qtProbe
        names: "qmake"
        searchPaths: _conanDependencies["qt"].bin_paths
    }

    Profile {
        name: "default"
        baseProfile: "conan_toolchain_profile"

        moduleProvider.Qt.qmakeFilePath: qtProbe.filePath
    }
}
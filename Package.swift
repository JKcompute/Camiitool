// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CamiitoolPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Camiitool", targets: ["Camiitool"]),
        .library(name: "amiitoolSwift", targets: ["amiitoolSwift"]),
        .library(name: "amiitoolSwiftDynamic", type: .dynamic,  targets: ["amiitoolSwift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "amiitoolSwift",
            dependencies: [ 
               "Camiitool"
            ],
            path: "./Sources/amiitoolSwift"
        ),
        .target(
            name: "Camiitool",
            dependencies: [ 
                "mbedtls"
            ],
            path: "./Sources/Camiitool",
            exclude: [
                "./mbedtls",
                "./mbedtls/yotta",
                "./mbedtls/visualc",
                "./LICENSE",
                "./amiitool.c",
                "./README.md",
                "./Makefile"
            ]
        ),
        .target(
            name: "mbedtls",
            dependencies: [],
            path: "./Sources/Camiitool/mbedtls",
            exclude: [
                "./yotta",
                "./visualc",
                "./LICENSE",
                "./programs",
                "./tests",
                "./scripts",
                "./include/CMakeLists.txt",
                "./DartConfiguration.tcl",
                "./doxygen",
                "./library/Makefile",
                "./apache-2.0.txt",
                "./Makefile",
                "./README.md",
                "./ChangeLog",
                "./CMakeLists.txt",
                "./circle.yml",
                "./configs/README.txt",
                "./library/CMakeLists.txt"
            ]
        ),  
        .testTarget(
            name: "amiitoolSwiftTests",
            dependencies: ["amiitoolSwift"]
        )
    ]
)

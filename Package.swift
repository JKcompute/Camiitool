// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CamiitoolPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        // .library(name: "amiitoolLib", targets: ["amiitool", "Camiitool", "mbedtls"]),
        .library(name: "Camiitool", targets: ["Camiitool"]),
        .library(name: "amiitoolSwift", targets: ["amiitoolSwift"]),
        // .library(name: "amiitoolDynamic", type: .dynamic,  targets: ["amiitool"]),
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
           //  linkerSettings: [
           //     .linkedLibrary("Camiitool")
           // ]
        ),

        .target(
            name: "Camiitool",
            dependencies: [ 
                "mbedtls"
            ],
            path: "./Sources/Camiitool",
            exclude: [
                "mbedtls",
                "LICENSE"
            ],
            resources: [
                .copy("."),
            ]
            // cSettings: [
                // .headerSearchPath("./mbedtls/include"),
                // .headerSearchPath("./include")
                // ]
        ),
        .target(
            name: "mbedtls",
            dependencies: [],
            path: "./Sources/Camiitool/mbedtls",
            exclude: [
                "./mbedtls/yotta",
                "./mbedtls/visualc",
                "LICENSE"
            ],
            resources: [
                .copy("."),
            ]
           // cSettings: [
           //     .headerSearchPath("./include")
           //     ]
        ),  

        .testTarget(
            name: "amiitoolSwiftTests",
            dependencies: ["amiitoolSwift"]
        )
    ]
)

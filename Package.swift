// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "ConnectIQ",
    products: [
        .library(
            name: "ConnectIQ",
            targets: ["ConnectIQ"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ConnectIQ",
            path: "ConnectIQ.xcframework"),
        .target(name: "ConnectIQWrapper",
                dependencies: ["ConnectIQ"],
                cSettings: [
                    .headerSearchPath("include"),
                    .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
                ]),
    ]
)

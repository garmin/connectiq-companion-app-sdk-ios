// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
    ]
)

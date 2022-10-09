// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Algorithms",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "Algorithms",
            targets: ["Algorithms"]),
    ],
    targets: [
        .target(
            name: "Algorithms",
            dependencies: []),
        .testTarget(
            name: "AlgorithmsTests",
            dependencies: ["Algorithms"]),
    ]
)

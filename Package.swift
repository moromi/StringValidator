// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StringValidator",
    products: [
        .library(
            name: "StringValidator",
            targets: ["StringValidator"]),
    ],
    targets: [
        .target(
            name: "StringValidator",
            path: "Sources"
        ),
        .testTarget(
            name: "StringValidatorTests",
            dependencies: ["StringValidator"],
            path: "Example/StringValidatorTests"
        ),
    ]
)

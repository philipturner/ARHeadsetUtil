// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ARHeadsetUtil",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_11),
        .tvOS(.v9),
        .watchOS(.v2),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ARHeadsetUtil",
            targets: ["ARHeadsetUtil"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ARHeadsetUtil",
            dependencies: []),
        .testTarget(
            name: "ARHeadsetUtilTests",
            dependencies: ["ARHeadsetUtil"]),
    ]
)

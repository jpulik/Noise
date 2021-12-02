// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Noise",
    platforms: [
        .macOS(.v10_10), .iOS(.v8)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Noise",
            targets: ["Noise"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            url: "https://github.com/OuterCorner/OpenSSL.git",
            from: "1.1.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "Noise",
            path: "./Noise.xcframework",
            dependencies: ["OpenSSL"]
        )
    ]
)

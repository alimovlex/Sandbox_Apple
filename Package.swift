// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sandbox_Apple",
        products: [
            // Products define the executables and libraries produced by a package, and make them visible to other packages.
        ],
    dependencies: [
        //.package(url: "https://github.com/belozierov/SwiftCoroutine", .upToNextMajor(from: "2.1.11"))
        .package(url: "https://github.com/Kitura/Kitura", from: "2.9.200"),
        .package(url: "https://github.com/Kitura/Kitura-WebSocket.git", from: "2.1.2")

        //

// Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Sandbox_Apple",
            dependencies: ["Kitura", "Kitura-WebSocket"]),
    ]
)

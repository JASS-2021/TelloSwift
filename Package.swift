// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TelloSwift",
    platforms: [
        .macOS(.v10_15), .iOS(.v12)
    ],
    products: [
        .library(name: "TelloSwift", targets: ["TelloSwift"]),
        .library(name: "TelloSimulator", targets: ["TelloSimulator"]),
    ],
    dependencies: [
        .package(name: "swift-nio", url: "https://github.com/apple/swift-nio.git", from: "2.27.0"),
    ],
    targets: [
        .target(name: "TelloSwift", dependencies: [
		.product(name: "NIO", package: "swift-nio"),
	]),
        .target(name: "TelloSimulator", dependencies: [
		.product(name: "NIO", package: "swift-nio"),
	]),
        .testTarget(name: "TelloSwiftTests", dependencies: [
		.target(name: "TelloSwift"),
		.target(name: "TelloSimulator"),
	]),
    ]
)

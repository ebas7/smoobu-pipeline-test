// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Smoobu",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(name: "Smoobu", targets: ["Smoobu"])
    ],
    targets: [
        .target(
            name: "Smoobu",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "SmoobuTests",
            dependencies: ["Smoobu"]
        )
    ]
)

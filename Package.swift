// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Smoobu",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Smoobu", targets: ["Smoobu"]),
    ],
    targets: [
        .target(
            name: "Smoobu",
            path: "Sources/Smoobu"
        ),
    ]
)

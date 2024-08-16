// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwiftAudioPro",
    platforms: [.iOS(.v11), .macOS(.v11)],
    products: [
        .library(
            name: "SwiftAudioPro",
            targets: ["SwiftAudioPro"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftAudioPro",
            dependencies: []),
        .testTarget(
            name: "SwiftAudioProTests",
            dependencies: ["SwiftAudioPro"],
            resources: [
                .process("Resources")
            ]
        ),
    ]
)

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Headless",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Headless",
            targets: ["Headless"]),
    ],
    targets: [
        .binaryTarget(
            name: "Headless",
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.2.2/Headless.xcframework.zip",
            checksum: "e2d96476613acf33b5e855a43ae101cf81d530f383344b66a6a0b34d76eb6601"
        )
    ]
)

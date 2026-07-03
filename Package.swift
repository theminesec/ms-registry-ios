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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/v1.2.01/Headless.xcframework.zip",
            checksum: "cefb5baa3ceea2d59bead2d5ff6385338c7652581e07ec5828bd5920ba9ae6af"
        )
    ]
)

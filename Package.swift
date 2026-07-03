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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.2.1/Headless.xcframework.zip",
            checksum: "2a3a1aa6c4cc6e9824a2d2aa63cb2215477fc57508a44a92bad0a3028ae59246"
        )
    ]
)

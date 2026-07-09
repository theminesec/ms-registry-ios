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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.2.3/Headless.xcframework.zip",
            checksum: "c22a448e2250012cc71e6be6fccdd0eaf7fd581314952c942204ce875280c53c"
        )
    ]
)

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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.2.5/Headless.xcframework.zip",
            checksum: "1e2d5f4484c74f9cb49ad11692e21a3e0f8fb8e837b865a6983576c6396237aa"
        )
    ]
)

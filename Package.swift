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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/v1.2.1/Headless.xcframework.zip",
            checksum: "629c3dc6ecc361a67dded891592d74dcd3f75e56d63390e5847063675fa6620c"
        )
    ]
)

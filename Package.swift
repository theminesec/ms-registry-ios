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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.0.01/Headless.xcframework.zip",
            checksum: "9694bdff14b939deebac1cfd547670aff28c0abdc5a8d1084e3dd79490cf63a0"
        )
    ]
)

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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.2.00/Headless.xcframework.zip",
            checksum: "d545e1c5fc2e8aa255cc7380ce089653e14cb863797c78fc9810933eae749059"
        )
    ]
)

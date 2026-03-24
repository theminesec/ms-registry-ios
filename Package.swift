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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.0.02/Headless.xcframework.zip",
            checksum: "684799895d3fec53c60699b99f9bfdf0984666910d4b454de587cd565e09c5c3"
        )
    ]
)

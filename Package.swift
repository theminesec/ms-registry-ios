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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.1.00/Headless.xcframework.zip",
            checksum: "3d77a3242a8a120e9b629240ef4d0d68e63464b275b3aa80e3077f1a596f8a04"
        )
    ]
)

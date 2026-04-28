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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.0.03/Headless.xcframework.zip",
            checksum: "d6141eb36008abf4958368118700de8928febd390cb5e6597970308ad78c5550"
        )
    ]
)

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
            url: "https://github.com/theminesec/ms-registry-ios/releases/download/1.2.4/Headless.xcframework.zip",
            checksum: "dc8dbe1c37b04184293d245d5ed306edd5a5b4c028996281cf7872987bc7f893"
        )
    ]
)

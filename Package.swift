// swift-tools-version:5.3

import PackageDescription
import Foundation

let package = Package(
        name: "LipaLightningLib",
        platforms: [
            .iOS(.v13)
        ],
        products: [
            .library(
                name: "LipaLightningLib",
                targets: ["LipaLightningLib"]),
        ],
        targets: [
            .binaryTarget(
            name: "lipalightninglibFFI",
            url: "https://github.com/danielgranhao/test-push-to-another-repo-ios-target/releases/download/v0.1.0-alpha.1/lipalightninglibFFI.xcframework.zip",
            checksum: "a74bd58fbbe74c7073c3ce8f611bae8ced3aaba58e032ed12f186e92e7165fc3"),
            .target(
                    name: "LipaLightningLib",
                    dependencies: ["lipalightninglibFFI"]),
        ]
)
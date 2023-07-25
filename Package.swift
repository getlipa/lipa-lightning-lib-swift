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
            url: "https://github.com/getlipa/lipa-lightning-lib-swift/releases/download/v0.10.3-beta/lipalightninglibFFI.xcframework.zip",
            checksum: "a7cfa649713a9942ba71cb9c30e2763dd562aa4074d0d066f281452a2f76813e"),
            .target(
                    name: "LipaLightningLib",
                    dependencies: ["lipalightninglibFFI"]),
        ]
)
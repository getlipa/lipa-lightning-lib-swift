// swift-tools-version:5.5

import PackageDescription
import Foundation

let package = Package(
        name: "LipaLightningLib",
        platforms: [
            .iOS(.v15)
        ],
        products: [
            .library(
                name: "LipaLightningLib",
                targets: ["LipaLightningLib"]),
        ],
        targets: [
            .binaryTarget(
            name: "lipalightninglibFFI",
            url: "https://github.com/getlipa/lipa-lightning-lib-swift/releases/download/v0.59.2-beta-mock/lipalightninglibFFI.xcframework.zip",
            checksum: "7b98f1262d4e297a78eb159ec6cf69e4f233ea49d97ab5b3a0e4c58c636f515e"),
            .target(
                    name: "LipaLightningLib",
                    dependencies: ["lipalightninglibFFI"]),
        ]
)
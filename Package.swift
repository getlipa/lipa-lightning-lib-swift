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
            url: "https://github.com/getlipa/lipa-lightning-lib-swift/releases/download/v0.33.0-beta-test-fix/lipalightninglibFFI.xcframework.zip",
            checksum: "68e38ff1f0c7c7073aff64f4275358227a412a14f5f2632fc326d00c6a09e926"),
            .target(
                    name: "LipaLightningLib",
                    dependencies: ["lipalightninglibFFI"]),
        ]
)
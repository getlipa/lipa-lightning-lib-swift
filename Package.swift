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
            url: "https://github.com/getlipa/lipa-lightning-lib-swift/releases/download/v0.24.2-beta/lipalightninglibFFI.xcframework.zip",
            checksum: "41cf883ea71d78175e5efca8be35125fe49e01d3575ee58d5dba3663c1b5f3e1"),
            .target(
                    name: "LipaLightningLib",
                    dependencies: ["lipalightninglibFFI"]),
        ]
)
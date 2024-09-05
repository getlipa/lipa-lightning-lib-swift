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
            url: "https://github.com/getlipa/lipa-lightning-lib-swift/releases/download/v0.62.2.2-beta-mock/lipalightninglibFFI.xcframework.zip",
            checksum: "4454f0534b108f8c51ef2390fe9bdb56ba3b1aa83a4e76cc59a50e78693ce8a2"),
            .target(
                    name: "LipaLightningLib",
                    dependencies: ["lipalightninglibFFI"]),
        ]
)

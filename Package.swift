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
            url: "https://github.com/getlipa/lipa-lightning-lib-swift/releases/download/v0.23.0-beta/lipalightninglibFFI.xcframework.zip",
            checksum: "9267ed64cc26337187053cc99c1773c828e44a2aa495fb9f265b198efa4fd481"),
            .target(
                    name: "LipaLightningLib",
                    dependencies: ["lipalightninglibFFI"]),
        ]
)
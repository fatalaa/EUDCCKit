// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "EUDCCKit",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v5),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "EUDCC",
            targets: [
                "EUDCC"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unrelentingtech/SwiftCBOR.git",
            .exact("0.4.3")
        )
    ],
    targets: [
        .target(
            name: "EUDCC",
            dependencies: [
                "SwiftCBOR"
            ]
        )
    ]
)

// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "TrueTime",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .tvOS(.v11),
    ],
    products: [
        .library(
            name: "TrueTime",
            targets: ["TrueTime"]
        ),
    ],
    targets: [
        .target(
            name: "TrueTime",
            dependencies: ["CTrueTime"],
            path: "Sources",
            exclude: [
                "CTrueTime/module.modulemap",
                "CTrueTime/ntp_types.h",
            ]
        ),
        .systemLibrary(name: "CTrueTime"),
    ]
)

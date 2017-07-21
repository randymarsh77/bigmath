// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "BigMath",
    dependencies: [
        .Package(url: "https://github.com/randymarsh77/CMPFR", majorVersion: 1)
    ]
)

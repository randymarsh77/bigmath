// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "BigMath",
    dependencies: [
        .Package(url: "https://github.com/makecph/CMPFR", majorVersion: 1)
    ]
)

// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RadioButtonSwiftUI",
    platforms:[
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RadioButtonSwiftUI",
            targets: ["RadioButtonSwiftUI"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "RadioButtonSwiftUI",
            dependencies: [])
    ]
)

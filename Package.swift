// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// FoundationExtension should never depend on anything other than Foundation.

let name = "FoundationExtension"
let target: Target = .target(name: name)
let product: Product = .library(name: name, targets: [name])
let testTarget: Target = .testTarget(name: name + "Tests", dependencies: [.target(name: name)])

let package = Package(
    name: name,
    platforms: [.iOS(.v10), .watchOS(.v3)],
    products: [product],
    targets: [target, testTarget]
)

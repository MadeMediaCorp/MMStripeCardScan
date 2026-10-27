// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MMStripeCardScan",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MMStripeCardScan",
            targets: ["MMStripeCardScan"])
    ],
    dependencies: [
        .package(url: "https://github.com/egarroMADE/MMStripeCore.git", from: "1.0.1")
    ],
    targets: [
        .target(
            name: "MMStripeCardScan",
            dependencies: [
                .product(name: "MMStripeCore", package: "MMStripeCore")
            ],
            path: "MMStripeCardScan/Classes",
            exclude: [".gitkeep"],
            resources: [
                .copy("Resources/CompiledModels/SSDOcr.mlmodelc"),
                .copy("Resources/CompiledModels/UxModel.mlmodelc"),
                .process("Resources/Localizations")
            ])
    ]
)

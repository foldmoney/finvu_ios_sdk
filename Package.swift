// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "FinvuSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "FinvuSDK",
            targets: ["FinvuSDKWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.8"),
        .package(url: "https://github.com/datatheorem/TrustKit.git", from: "3.0.7")
    ],
    targets: [
        .binaryTarget(
            name: "FinvuSDK",
            path: "FinvuSDK.xcframework"
        ),
        .target(
            name: "FinvuSDKWrapper",
            dependencies: [
                "FinvuSDK",
                .product(name: "Starscream", package: "Starscream"),
                .product(name: "TrustKit", package: "TrustKit")
            ],
            path: "Sources/FinvuSDKWrapper"
        )
    ]
)

// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "FinvuSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FinvuSDK",
            targets: ["FinvuSDKWrapper"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "FinvuSDK",
            path: "FinvuSDK.xcframework"
        ),
        .binaryTarget(
            name: "Starscream",
            path: "Starscream.xcframework"
        ),
        .binaryTarget(
            name: "TrustKit",
            path: "TrustKit.xcframework"
        ),
        .target(
            name: "FinvuSDKWrapper",
            dependencies: [
                "FinvuSDK",
                "Starscream",
                "TrustKit"
            ],
            path: "Sources/FinvuSDKWrapper"
        )
    ]
)

// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ImpreziaChatSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "ImpreziaChatSDK", targets: ["ImpreziaChatSDK", "ImpreziaChatSDKDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/adimpress/imprezia_sdk_ios.git", from: "0.5.27")
    ],
    targets: [
        .binaryTarget(
            name: "ImpreziaChatSDK",
            url: "https://github.com/adimpress/imprezia_chat_sdk_ios/releases/download/v0.1.0/ImpreziaChatSDK.xcframework.zip",
            checksum: "84f65e7713cb560704d052483ac719e52c07763e9f313f94a9092f5750659346"
        ),
        .target(
            name: "ImpreziaChatSDKDependencies",
            dependencies: [.product(name: "ImpreziaSDK", package: "imprezia_sdk_ios")]
        )
    ]
)

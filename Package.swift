// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ImpreziaChatSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "ImpreziaChatSDK", targets: ["ImpreziaChatSDK", "ImpreziaChatSDKDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/adimpress/imprezia_sdk_ios.git", from: "0.5.30")
    ],
    targets: [
        .binaryTarget(
            name: "ImpreziaChatSDK",
            url: "https://github.com/adimpress/imprezia_chat_sdk_ios/releases/download/v0.1.1/ImpreziaChatSDK.xcframework.zip",
            checksum: "0e1968095bcf920dbc2d55ab29f198f68144202a44cfb815e2055ac29c9cdc88"
        ),
        .target(
            name: "ImpreziaChatSDKDependencies",
            dependencies: [.product(name: "ImpreziaSDK", package: "imprezia_sdk_ios")]
        )
    ]
)

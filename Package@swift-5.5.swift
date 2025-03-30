// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "EnterpriseProgram-Swift-SDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "EnterpriseProgram-Swift-SDK", targets: ["EnterpriseProgram-Swift-SDK"])
    ],
    dependencies: [
        .package(url: "https://github.com/CreateAPI/URLQueryEncoder.git", from: "0.2.0")
    ],
    targets: [
        .testTarget(name: "EnterpriseProgram-Swift-SDK-Tests", dependencies: ["EnterpriseProgram-Swift-SDK"], path: "Tests"),
        .target(
            name: "EnterpriseProgram-Swift-SDK",
            dependencies: ["URLQueryEncoder"],
            path: "Sources",
            exclude: ["OpenAPI/app_store_connect_api.json"])
    ]
)

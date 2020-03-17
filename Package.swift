// swift-tools-version:4.0

import PackageDescription

let pkg = Package(name: "ProcedureKit")

pkg.products = [
    .library(name: "ProcedureKit", targets: ["ProcedureKit"]),
    .library(name: "ProcedureKitNetwork", targets: ["ProcedureKitNetwork"]),
    .library(name: "TestingProcedureKit", targets: ["TestingProcedureKit"])
]

pkg.targets = [
    .target(name: "ProcedureKit"),
    .target(name: "ProcedureKitNetwork", dependencies: ["ProcedureKit"]),
    .target(name: "TestingProcedureKit", dependencies: ["ProcedureKit"]),
    .testTarget(name: "ProcedureKitTests", dependencies: ["ProcedureKit", "TestingProcedureKit"]),
    .testTarget(name: "ProcedureKitStressTests", dependencies: ["ProcedureKit", "TestingProcedureKit"]),
    .testTarget(name: "ProcedureKitNetworkTests", dependencies: ["ProcedureKitNetwork", "TestingProcedureKit"]),
]

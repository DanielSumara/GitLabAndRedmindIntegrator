import PackageDescription
 
let package = Package(
    name: "GitLabRedmindIntegrator",
    dependencies: [
        .Package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", majorVersion: 2)
    ]
)

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .remote(url: "https://github.com/Arafo/LightSessionKit", requirement: .branch("main"))
    ],
    platforms: [.iOS]
)

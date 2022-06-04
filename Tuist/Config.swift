import ProjectDescription

let config = Config(
    cache: .cache(profiles: [
        .profile(name: "Simulator", configuration: "Debug"),
        .profile(name: "Device", configuration: "Release")
    ])
)

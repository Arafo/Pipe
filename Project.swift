import ProjectDescription
import ProjectDescriptionHelpers
//import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains Pipe App target and Pipe unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
//let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(name: "Pipe",
                          platform: .iOS,
                          frameworksTargets: [
                            "PipeKit",
                            "PipeUI"
                          ],
                          dependenciesTargets: [
                            .external(name: "LightSessionKit")
                            //.lightSessionKit
                          ])

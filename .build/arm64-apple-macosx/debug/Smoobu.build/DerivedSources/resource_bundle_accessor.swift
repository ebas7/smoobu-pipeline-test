import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("Smoobu_Smoobu.bundle").path
        let buildPath = "/private/var/folders/p0/7jmtp_g93mbdkt0h6tqkjrnw0000gn/T/smoobu-pipeline/SMOOBU-DEMO-9-ios-1778492235484/.build/arm64-apple-macosx/debug/Smoobu_Smoobu.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}
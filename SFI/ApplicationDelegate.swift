import ApplicationLibrary
import Foundation
import Library
import UIKit

class ApplicationDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        NSLog("Here I stand")
        ServiceNotification.register()
        Task.detached {
            do {
                try await UIProfileUpdateTask.setup()
                NSLog("setup background task success")
            } catch {
                NSLog("setup background task error: \(error.localizedDescription)")
            }
        }
        return true
    }
}

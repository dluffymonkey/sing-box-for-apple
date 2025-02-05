import ApplicationLibrary
import Foundation
import Library
import SwiftUI
import UIKit

@main
struct Application: App {
    @UIApplicationDelegateAdaptor private var appDelegate: ApplicationDelegate

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

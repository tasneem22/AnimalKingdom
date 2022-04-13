//
//  AnimalKingdomApp.swift
//  AnimalKingdom
//
//  Created by Tasneem Toolba on 13.04.2022.
//

import SwiftUI
import Firebase

@main
struct AnimalKingdomApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate

    var body: some Scene {
        WindowGroup {
            Home()
        }
    }
    class AppDelegate: NSObject, UIApplicationDelegate {
       func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            FirebaseApp.configure()
         return true
       }
     }
}

//
//  UberXApp.swift
//  UberX
//
//  Created by Daval Cato on 9/5/20.
//

import SwiftUI
import Firebase
import FirebaseCore

@main
struct UberXApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
      func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
            [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
            let db = Firestore.firestore()
            let settings =  db.settings
            db.settings = settings
        
        Database.database().reference()
        
        return true
      }
    
}










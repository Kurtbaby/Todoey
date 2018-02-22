//
//  AppDelegate.swift
//  Todoey
//
//  Created by Kurt D. Gengenbach on 1/9/18.
//  Copyright © 2018 JuniFly. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        do {
            _ = try Realm()
        } catch {
            print("Error initiating new realm, \(error)")
        }

        return true
    }
}

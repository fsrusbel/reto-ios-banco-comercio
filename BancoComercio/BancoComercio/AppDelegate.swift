//
//  AppDelegate.swift
//  BancoComercio
//
//  Created by Rusbel Fs on 21/02/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let mainNavigationController = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = mainNavigationController
        window.makeKeyAndVisible()
        self.window = window
        
        UINavigationBar.appearance().tintColor = #colorLiteral(red: 0.7329999804, green: 0.09399999678, blue: 0.125, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        return true
    }

}


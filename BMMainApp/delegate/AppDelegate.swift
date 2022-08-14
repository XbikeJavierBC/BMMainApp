//
//  AppDelegate.swift
//  BMMainApp
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import ghmjolnircore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    internal var window: UIWindow?
    internal var controllerManager: GHManagerController?
    internal lazy var navigationController = UINavigationController()
    
    func application(
        _ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        self.setManagerConfig()
        self.setKeyboardConfig()
        self.setAppStyle()
        self.setGoogleConfig()
        
        return true
    }
}

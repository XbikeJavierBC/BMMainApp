//
//  AppDelegateManagerExtension.swift
//  BMMainApp
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import ghmjolnircore

import bksdkcore
import bkonboardingapi

//MARK: ::: MANAGER CONFIG :::
extension AppDelegate {
    func setManagerConfig() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        self.controllerManager = GHManagerController(
            navBar: self.navigationController
        )
        
        BKSdkApiManager.shared
            .registerApi(BKOnBoardingRegisterApi.self)
            .build()
        
        if let manager = self.controllerManager {
            self.window?.rootViewController = self.navigationController
            self.window?.makeKeyAndVisible()

            self.setAppStyle()

            manager.presentNavigationViewController(
                managerModel: try! BKApiFlow.onboarding.modelManager
            )
        }
    }
}


//
//  AppDelegateManagerExtension.swift
//  BMMainApp
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import ghmjolnircore

import bklocalrepositorycore

import bksdkcore
import bkonboardingapi
import bkrideapi
import bkdashboardapi

//MARK: ::: MANAGER CONFIG :::
extension AppDelegate {
    func setManagerConfig() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        self.controllerManager = GHManagerController(
            navBar: self.navigationController
        )
        
        BKSdkApiManager.shared
            .registerApi(BKOnBoardingRegisterApi.self)
            .registerApi(BKRideRegisterApi.self)
            .registerApi(BKDashboardRegisterApi.self)
            .build()
        
        if let manager = self.controllerManager {
            self.window?.rootViewController = self.navigationController
            self.window?.makeKeyAndVisible()

            self.setAppStyle()

            manager.presentNavigationViewController(
                managerModel: try! !BKFlagsLocalRepository.showOnboarding
                    ? BKApiFlow.onboarding.modelManager
                    : BKApiFlow.dashboard.modelManager
            )
            
            BKFlagsLocalRepository.showOnboarding = true
        }
    }
}


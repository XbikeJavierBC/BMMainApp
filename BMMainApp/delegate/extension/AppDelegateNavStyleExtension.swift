//
//  AppDelegateNavStyleExtension.swift
//  BMMainApp
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import bksdkcore

//MARK: ::: STYLE CONFIG :::
extension AppDelegate {
    func setAppStyle() {
        BKAppStyle.setTabBarStyle(
            color: .oragenColor, font: .abelRegular15
        )
        BKAppStyle.setNavigationStyle()
    }
}

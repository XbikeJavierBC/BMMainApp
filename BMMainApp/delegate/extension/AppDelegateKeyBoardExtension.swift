//
//  AppDelegateKeyBoardExtension.swift
//  BMMainApp
//
//  Created by Javier Carapia on 14/08/22.
//

import IQKeyboardManagerSwift

//MARK: ::: KEYBOARD CONFIG :::
extension AppDelegate {
    func setKeyboardConfig() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        IQKeyboardManager.shared.toolbarDoneBarButtonItemText = "OK"
    }
}

//
//  AppDelegateGoogleExtension.swift
//  BMMainApp
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import GooglePlaces
import GoogleMaps

//MARK: ::: GOOGLE CONFIG :::
extension AppDelegate {
    func setGoogleConfig() {
        GMSServices.provideAPIKey("AIzaSyDvU2Wm36PR-7Oo03qzn6UwHjgjD9w4zqo")
        GMSPlacesClient.provideAPIKey("AIzaSyDvU2Wm36PR-7Oo03qzn6UwHjgjD9w4zqo")
    }
}

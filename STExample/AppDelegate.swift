//
//  AppDelegate.swift
//  STExample
//
//  Created by ST-iOS on 2/1/23.
//

import UIKit
import ShareTripSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UISceneDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        STSDK.shared.delegate = self
        STSDK.shared.accessToken = "accessToken"
        
        window?.rootViewController =  UINavigationController(rootViewController: MyBLHomeVC.instantiate())
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

extension AppDelegate: STSDKDelegate {
    func didSuccessTokenValidation() {
        //Triggered after a successful token validation
    }
    
    func didFailed(error: String) {
        STLog.error("Token validation errror: \(error)")
    }
}

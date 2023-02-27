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
        
        STSDK.configure()
        STSDK.shared.clientId = "MyBL"
        STSDK.shared.delegate = self
        STSDK.shared.accessToken = "$2b$10$wD1FIFQia1s7U7wP7.fzn.FHpFE/YOk5fWFL8r7PPkU.qZ3dsskNK"
        
        window?.rootViewController =  UINavigationController(rootViewController: MyBLHomeVC.instantiate())
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

extension AppDelegate: STSDKDelegate {
    func didSuccessTokenValidation() {
        print("Token is valid")
    }
    
    func didFailed(error: String) {
        print("Token validation errror: \(error)")
    }
}

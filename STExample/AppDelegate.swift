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
        
        STSDK.initiate("accessToken")
        
        window?.rootViewController =  UINavigationController(rootViewController: MyBLHomeVC.instantiate())
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

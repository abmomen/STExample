platform :ios, '11.0'

target 'STExample' do
  
  use_frameworks!
  
  pod 'ShareTripSDK', '1.0.7'
  
  pod 'JWT'
  pod 'PKHUD'
  pod 'Base64'
  pod 'Koloda'
  pod 'BlueECC'
  pod 'BlueRSA'
  pod 'Alamofire'
  pod 'lottie-ios'
  pod 'SwiftyJSON'
  pod 'Kingfisher', '~> 6.3.1'
  pod 'Bolts-Swift'
  pod 'BlueCryptor'
  pod 'FloatingPanel'
  pod 'GoogleSignIn'
  pod 'ImageSlideshow'
  pod 'JTAppleCalendar'
  pod 'SwiftKeychainWrapper'
  pod 'Socket.IO-Client-Swift'
  pod 'FBSDKCoreKit'
  pod 'FBSDKLoginKit'
  pod 'FBSDKShareKit'
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore'
  pod 'FirebaseAnalytics'
  pod 'FirebaseMessaging'
  pod 'FirebaseCrashlytics'
  pod 'FirebaseRemoteConfig'
  pod 'FirebaseDynamicLinks'
  pod 'IQKeyboardManagerSwift'
  pod 'FirebaseCoreDiagnostics'
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end

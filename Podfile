platform :ios, '11.0'

target 'STExample' do
  
  use_frameworks!

  pod 'ShareTripSDK', :git => 'https://github.com/sharetripnet/ShareTripSDK.git', :tag => '1.0.1'
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end

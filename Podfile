source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '11.0'

use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

target 'ws' do

  pod 'Alamofire', '~> 4.8.2'
  pod 'thenPromise'
  pod 'IkigaJSON', '~> 2.0.0'

  target 'wsTests' do
    inherit! :search_paths
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
      config.build_settings['SWIFT_VERSION'] = '5.0'
    end
  end
end

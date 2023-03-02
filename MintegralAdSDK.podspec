Pod::Spec.new do |spec|


  spec.name         = 'MintegralAdSDK'
  spec.version      = '7.3.1'
  spec.summary      = 'Mintegral Network Mobile App Ad SDK'
  spec.homepage     = 'http://cdn-adn.rayjump.com/cdn-adn/v2/markdown_v2/index.html?file=sdk-m_sdk-ios&lang=en'
  spec.description  = <<-DESC   
    Mintegral's  AdSDK allows you to monetize your iOS and Android apps with Mintegral ads.  
                       DESC

  spec.license      = { :type => 'Mintegral', :file => "Fmk/LICENSE.txt" }
  spec.author             = 'Mintegral'
  spec.social_media_url   = 'https://www.facebook.com/mintegral.official'
  spec.platform     = :ios, '9.0'


  spec.source = { :http => "https://github.com/Mintegral-official/MintegralAdSDK-iOS-new/releases/download/#{spec.version}/Mintegral_M_SDK.zip" }

  #spec.source       = { :git => 'https://github.com/Mintegral-official/MintegralAdSDK-iOS.git', :tag => sdkVersion}


  spec.libraries = 'sqlite3', 'xml2','z'
  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit','AdSupport','StoreKit','QuartzCore','CoreTelephony','MobileCoreServices','Accelerate','AVFoundation','WebKit'

  spec.requires_arc = true

  spec.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC'}
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  spec.ios.deployment_target = '9.0'

  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.default_subspecs = 'RewardVideoAd','BidRewardVideoAd', 'NewInterstitialAd', 'BidNewInterstitialAd', 'InterstitialVideoAd','BidInterstitialVideoAd','BannerAd','BidBannerAd','NativeAd','BidNativeAd'

  spec.subspec 'NativeAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDK.xcframework'
  end
  
  spec.subspec 'BidNativeAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKBidding.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end

  spec.subspec 'NewInterstitialAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKNewInterstitial.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
    ss.dependency 'MintegralAdSDK/InterstitialVideoAd'
  end
  
  spec.subspec 'BidNewInterstitialAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.dependency 'MintegralAdSDK/NewInterstitialAd'
    ss.dependency 'MintegralAdSDK/BidNativeAd'
  end
   
  spec.subspec 'InterstitialVideoAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKInterstitialVideo.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end
  
  spec.subspec 'BidInterstitialVideoAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.dependency 'MintegralAdSDK/InterstitialVideoAd'
    ss.dependency 'MintegralAdSDK/BidNativeAd'
  end
  
  
  spec.subspec 'RewardVideoAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKReward.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end
  
  spec.subspec 'BidRewardVideoAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.dependency 'MintegralAdSDK/BidNativeAd'
    ss.dependency 'MintegralAdSDK/RewardVideoAd'
  end
  
  
  spec.subspec 'InterstitialAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKInterstitial.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end
  

  
  
  spec.subspec 'BannerAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKBanner.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end
  
  spec.subspec 'BidBannerAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'MintegralAdSDK/BidNativeAd'
    ss.dependency 'MintegralAdSDK/BannerAd'
  end
  
  spec.subspec 'SplashAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKSplash.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end
  
  spec.subspec 'BidSplashAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'MintegralAdSDK/BidNativeAd'
    ss.dependency 'MintegralAdSDK/SplashAd'
  end
  
  spec.subspec 'NativeAdvancedAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKNativeAdvanced.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end
  
  spec.subspec 'BidNativeAdvancedAd' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'MintegralAdSDK/BidNativeAd'
    ss.dependency 'MintegralAdSDK/NativeAdvancedAd'
  end

  spec.subspec 'CNAddition' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.preserve_paths = "Fmk/*.xcframework"
    ss.vendored_frameworks = 'Fmk/MTGSDKCNAddition.xcframework'
    ss.dependency 'MintegralAdSDK/NativeAd'
  end
  
  spec.subspec 'All' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'MintegralAdSDK/NativeAd'
    ss.dependency 'MintegralAdSDK/BidNativeAd'
    ss.dependency 'MintegralAdSDK/RewardVideoAd'
    ss.dependency 'MintegralAdSDK/NewInterstitialAd'
    ss.dependency 'MintegralAdSDK/InterstitialVideoAd'
    ss.dependency 'MintegralAdSDK/InterstitialAd'
    ss.dependency 'MintegralAdSDK/BannerAd'
    ss.dependency 'MintegralAdSDK/SplashAd'
    ss.dependency 'MintegralAdSDK/NativeAdvancedAd'
  
  end

end

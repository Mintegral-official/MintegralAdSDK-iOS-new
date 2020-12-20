Pod::Spec.new do |spec|


  spec.name         = 'MintegralAdSDK'
  spec.version      = '6.7.3.0'
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
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}

  #spec.preserve_paths = "Mintegral_M_SDK_585/*.framework"

  spec.ios.deployment_target = '8.0'


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.default_subspecs =  'NativeAd'

  spec.subspec 'NativeAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDK.framework'
  end

  spec.subspec 'BidNativeAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDK.framework', 'Fmk/MTGSDKBidding.framework'
  end

 
spec.subspec 'InterstitialVideoAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKInterstitialVideo.framework'
  ss.dependency 'MintegralAdSDK/NativeAd'
end

spec.subspec 'BidInterstitialVideoAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKInterstitialVideo.framework'
  ss.dependency 'MintegralAdSDK/BidNativeAd'
end


spec.subspec 'RewardVideoAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKReward.framework'
  ss.dependency 'MintegralAdSDK/NativeAd'
end

spec.subspec 'BidRewardVideoAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKReward.framework'
  ss.dependency 'MintegralAdSDK/BidNativeAd'
end


spec.subspec 'InterstitialAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKInterstitial.framework'
  ss.dependency 'MintegralAdSDK/NativeAd'
end


spec.subspec 'InterActiveAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKInterActive.framework'
  ss.dependency 'MintegralAdSDK/NativeAd'
end


spec.subspec 'BannerAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKBanner.framework'
  ss.dependency 'MintegralAdSDK/NativeAd'
end

spec.subspec 'BidBannerAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.vendored_frameworks = 'Fmk/MTGSDKBanner.framework'
  ss.dependency 'MintegralAdSDK/BidNativeAd'
end

spec.subspec 'SplashAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKSplash.framework'
  ss.dependency 'MintegralAdSDK/NativeAd'
end

spec.subspec 'BidSplashAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.vendored_frameworks = 'Fmk/MTGSDKSplash.framework'
  ss.dependency 'MintegralAdSDK/BidNativeAd'
end

spec.subspec 'NativeAdvancedAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.preserve_paths = "Fmk/*.framework"
  ss.vendored_frameworks = 'Fmk/MTGSDKNativeAdvanced.framework'
  ss.dependency 'MintegralAdSDK/NativeAd'
end

spec.subspec 'BidNativeAdvancedAd' do |ss|
  ss.ios.deployment_target = '8.0'
  ss.vendored_frameworks = 'Fmk/MTGSDKNativeAdvanced.framework'
  ss.dependency 'MintegralAdSDK/BidNativeAd'
end


 
end

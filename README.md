[![Version](https://img.shields.io/cocoapods/v/MintegralAdSDK.svg?style=flat)](http://cocoapods.org/pods/MintegralAdSDK)
[![License](https://img.shields.io/cocoapods/l/MintegralAdSDK.svg?style=flat)](http://cocoapods.org/pods/MintegralAdSDK)


# Mintegral SDKs for iOS

More information can be found at the [Wiki page.](https://dev.mintegral.com/doc/index.html?file=sdk-m_sdk-ios)

## Install a Mintegral SDK using CocoaPods

Mintegral distributes several iOS specific SDKs via CocoaPods.
You can install the CocoaPods tool on OS X by running the following command from
the terminal. Detailed information is available in the [Getting Started
guide](https://guides.cocoapods.org/using/getting-started.html#getting-started).

```
$ sudo gem install cocoapods
```

### Add a Mintegral SDK to your iOS app

CocoaPods is used to install and manage dependencies in existing Xcode projects.

1. Create an Xcode project, and save it to your local machine.
2. Create a file named `Podfile` in your project directory. This file defines
   your project's dependencies, and is commonly referred to as a Podspec.
3. Open `Podfile`, and add your dependencies. A simple Podspec is shown here:

    ```
    platform :ios, '10.0'
    
    # default is using Native, Banner, RewardVideo, InterstitialVideo ad formats, including bidding.
    pod 'MintegralAdSDK'
    
    # or for all ad formats, please use:
    #pod 'MintegralAdSDK/All'  
    
    # for single ad format, see below:
    pod 'MintegralAdSDK/BidNativeAd'  
    pod 'MintegralAdSDK/RewardVideoAd'
    pod 'MintegralAdSDK/BidRewardVideoAd'
    pod 'MintegralAdSDK/InterstitialVideoAd'
    pod 'MintegralAdSDK/BidInterstitialVideoAd'
    pod 'MintegralAdSDK/InterstitialAd'
    pod 'MintegralAdSDK/InterActiveAd'
    pod 'MintegralAdSDK/BannerAd'
    pod 'MintegralAdSDK/BidBannerAd'
    pod 'MintegralAdSDK/SplashAd'
    pod 'MintegralAdSDK/BidSplashAd'
    pod 'MintegralAdSDK/NativeAdvancedAd'
    pod 'MintegralAdSDK/BidNativeAdvancedAd'
    
    ```

4. Save the file.

5. Open a terminal and `cd` to the directory containing the Podfile.

    ```
    $ cd <path-to-project>/project/
    ```

6. Run the `pod install` command. This will install the SDKs specified in the
   Podspec, along with any dependencies they may have.

    ```
    $ pod install
    ```

7. Open your app's `.xcworkspace` file to launch Xcode.
   Use this file for all development on your app.
   
   

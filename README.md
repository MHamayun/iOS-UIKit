# Agora UIKit for iOS and macOS

<p align="center">
  <img src="https://img.shields.io/badge/platform-iOS%20|%20macOS-lightgrey"/>
  <img src="https://img.shields.io/github/v/release/AgoraIO-Community/iOS-UIKit?color=orange&label=SwiftPM&logo=swift"/>
  <img src="https://img.shields.io/cocoapods/v/AgoraUIKit_iOS?label=CocoaPods"/>
  <img src="https://github.com/AgoraIO-Community/iOS-UIKit/workflows/Pod%20Lint/badge.svg"/>
  <img src="https://github.com/AgoraIO-Community/iOS-UIKit/workflows/swiftlint/badge.svg"/>
  <a href="https://www.agora.io/en/join-slack/">
    <img src="https://img.shields.io/badge/slack-@RTE%20Dev-blue.svg?logo=slack">
  </a>
</p>



Instantly integrate Agora in your own application or prototype using iOS or macOS.

<p align="center">
  <img src="https://github.com/AgoraIO-Community/iOS-UIKit/raw/main/media/agora-uikit-banner.png"/>
</p>

## Requirements

- Device
    - Either an iOS device with 12.0 or later
    - Or a macOS computer with 10.14 or later
- Xcode 11 or later
- *CocoaPods (if installing with CocoaPods)
- [An Agora developer account](https://www.agora.io/en/blog/how-to-get-started-with-agora?utm_source=github&utm_repo=agora-ios-uikit)

Once you have an Agora developer account and an App ID, you're ready to use this pod.

[Click here for full documentation](https://agoraio-community.github.io/iOS-UIKit/)

## Installation

### Swift Package Manager (Recommended, iOS Only)

Add the URL of this repository to your Xcode 11+ Project.

Go to File > Swift Packages > Add Package Dependency, and paste in this link:

`https://github.com/AgoraIO-Community/iOS-UIKit`

If you are using the developer preview, add `4.0.0-preview` in the version box there, otherwise use a version from `1.0.0` up to `2.0.0`.

---

If you have issues installing the Swift Package:

In Xcode's File menu, select 'Swift Packages' and then 'Reset Package Caches'.

### CocoaPods

In your iOS or macOS project, add this pod to your repository by adding a file named `Podfile`, with contents similar to this:

```ruby
# Uncomment the next line to define a global platform for your project
# platform :ios, '12.0'

target 'Agora-UIKit-Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Uncomment the next line if you want to install for iOS
  # pod 'AgoraUIKit_iOS', '~> 1.0'

  # Uncomment the next line if you want to install for macOS
  # pod 'AgoraUIKit_macOS', '~> 1.0'
end
```

And then install the pods using `pod install --repo-update`

If any of these steps are unclear, look at ["Using Cocoapods" on cocoapods.org](https://guides.cocoapods.org/using/using-cocoapods.html).
The installation will change slightly once this pod is out of pre-release.

## Usage

Once installed, open your application `.xcodeproj` file. Or `.xcworkspace` if using CocoaPods.

Decide where you want to add your `AgoraVideoViewer`, and in the same file import `Agora_UIKit` or `Agora_AppKit` for iOS and macOS respectively.
Next, create an `AgoraVideoViewer` object and frame it in your scene like you would any other `UIView` or `NSView`. The `AgoraVideoViewer` object must be provided `AgoraConnectionData` and a UIViewController/NSViewController on creation.

AgoraConnectionData has two values for initialising. These are appId and rtcToken, as well as an optional rtmToken.

An `AgoraVideoViewer` can be created like this:

```swift
import AgoraRtcKit
import AgoraUIKit_iOS

let agoraView = AgoraVideoViewer(
    connectionData: AgoraConnectionData(
        appId: "my-app-id",
        rtcToken: "my-channel-token",
        rtmToken: "my-channel-rtm-token"
    ),
    style: .grid,
    delegate: self
)
```

An alternative style is `.floating`, as seen in the image above.

To join a channel, simply call:

```swift
agoraView.join(channel: "test", as: .broadcaster)
```

## Documentation

For full documentation, see our [AgoraUIKit documentation page](https://agoraio-community.github.io/iOS-UIKit/).

### Roadmap

- [x] Muting/Unmuting a remote member
- [ ] Usernames
- [ ] Promoting an audience member to a broadcaster role.
- [ ] Layout for Voice Calls
- [ ] Cloud recording

## UIKits

The plan is to grow this library and have similar offerings across all supported platforms. There are already similar libraries for [Android](https://github.com/AgoraIO-Community/Android-UIKit/), [React Native](https://github.com/AgoraIO-Community/ReactNative-UIKit), and [Flutter](https://github.com/AgoraIO-Community/Flutter-UIKit/), so be sure to check them out.

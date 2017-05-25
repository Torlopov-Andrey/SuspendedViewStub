# SuspendedViewStub

[![CI Status](http://img.shields.io/travis/torlopov.andrey@gmail.com/SuspendedViewStub.svg?style=flat)](https://travis-ci.org/torlopov.andrey@gmail.com/SuspendedViewStub)
[![Version](https://img.shields.io/cocoapods/v/SuspendedViewStub.svg?style=flat)](http://cocoapods.org/pods/SuspendedViewStub)
[![License](https://img.shields.io/cocoapods/l/SuspendedViewStub.svg?style=flat)](http://cocoapods.org/pods/SuspendedViewStub)
[![Platform](https://img.shields.io/cocoapods/p/SuspendedViewStub.svg?style=flat)](http://cocoapods.org/pods/SuspendedViewStub)

## About

It is just simple stub for your application, when you press home button. The main window is covered by a view of a specific color or your custom controller. Additionally, you can set autoclosing when your app resets foreground mode. In demo, I use custom controller with password field.

![About](https://github.com/Torlopov-Andrey/SuspendedViewStub/blob/master/Source/stub_demo.gif)

## Installation

SuspendedViewStub is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SuspendedViewStub"
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## How it use

* In your project add the following line to your `Podfile`:

```ruby
pod "SuspendedViewStub"
```

In your project you have 2 ways:

* Use colored view. Than you write in `AppDelegate.swift`:

``` Swift
func applicationDidEnterBackground(_ application: UIApplication) {
SuspendedViewStub.setStub(color: .green)
}
```

* Use custom controller. Than you write in `AppDelegate.swift`:

``` Swift
func applicationDidEnterBackground(_ application: UIApplication) {
SuspendedViewStub.setStub(sceneName: CONTROLLER_IDENTITY, autocomplete: false)

//By default storyboardname is "Main" and autocomplete is true.
SuspendedViewStub.setStub(sceneName: CONTROLLER_IDENTITY, storyboardName: STORYBOARD_NAME, autocomplete: false)
}
```

* Important to write in `AppDelegate.swift` next code: 

``` Swift
func applicationWillEnterForeground(_ application: UIApplication) {
//This code is required!
SuspendedViewStub.removeStub() 
}
```

That's all

## Author

torlopov.andrey@gmail.com
skype: torlopov.andrey

## License

SuspendedViewStub is available under the MIT license. See the LICENSE file for more info.

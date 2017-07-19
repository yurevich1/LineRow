# LineRow

[![CI Status](http://img.shields.io/travis/yurevich1/LineRow.svg?style=flat)](https://travis-ci.org/yurevich1/LineRow)
[![Version](https://img.shields.io/cocoapods/v/LineRow.svg?style=flat)](http://cocoapods.org/pods/LineRow)
[![License](https://img.shields.io/cocoapods/l/LineRow.svg?style=flat)](http://cocoapods.org/pods/LineRow)
[![Platform](https://img.shields.io/cocoapods/p/LineRow.svg?style=flat)](http://cocoapods.org/pods/LineRow)

By [Petrukhin Vyacheslav](http://slava.online).

## Contents
* [Introduction](#introduction)
* [Usage](#usage)
* [Requirements](#requirements)
* [Getting involved](#getting-involved)
* [Examples](#examples)
* [Installation](#installation)
* [Customization](#customization)
* [LineRow parameters](#nativeexpressrow-parameters)

## Introduction

`LineRow` is a simple colored row.

* Features
* Height setup

<img src="Media/screenshot.png" width="313"/>

## Usage

Just setup a color.

`FormViewController`

```swift
import LineRow

class ViewController: FormViewController {

override func viewDidLoad() {
super.viewDidLoad()

form +++ Section()
<<< LineColor()  {
$0.value = .black
}
}
}
```

## Requirements

* iOS 8.0+
* Xcode 8.3+

## Getting involved

* If you **want to contribute** please feel free to **submit pull requests**.
* If you **have a feature request** or you **found a bug** please **open an issue**.

Before contribute check the [CONTRIBUTING](CONTRIBUTING.md) file for more info.

## Examples

Follow these steps to run Example project:
* First of all you have to register your iOS application in the [AdMob](https://admob.com) and [Firebase](https://firebase.google.com)
* You have to create both `"YOUR_ADMOB_APP_ID"` and `"your-admob-unit-id"`.
* Clone LineRow repository
* Open terminal in the downloaded folder and run bin/setup script
* Open LineRow workspace
* Run the *Example* project.

## Installation

#### CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects.

To install LineRow, simply add the following line to your Podfile:

```ruby
pod 'LineRow', '~> 1.0'
```

#### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a simple, decentralized dependency manager for Cocoa.

To install LineRow, simply add the following line to your Cartfile:

```ogdl
github "EurekaCommunity/LineRow" ~> 1.0
```


## Customization

For basic styling colors initalization, use `cellSetup` and `cellUpdate`.

### LineRow parameters

* `var value: String  = colorOfUIColorClass
* `var adHeight: Double`: sets your banner height.

For instance,

you can do this in any `FormViewController` class:

```swift
<<< LineRow() {
$0.value = .red
}
```




## Author

* [Petrukhin Vyacheslav](http://slava.online)


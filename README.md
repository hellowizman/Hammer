<p align="center" >
	<img src="/Images/logo_2048_2048.png" alt="Hammer" title="Hammer" width="300px" height="300px">
</p>

<p align="center">
	<a href="https://swift.org">
		<img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/v/Hammer.svg">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/dt/Hammer.svg">
	</a>
	<a href="https://tldrlegal.com/license/mit-license">
		<img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat">
	</a>
</p>

## At a Glance

`Hammer` is a powerful tool for solving common tasks with classes and objects.

## How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Hammer` cocoapod

## Requirements

* iOS 9 and later
* Xcode 9 and later
* Swift 4

## Usage

### Classes

Retrieve class name:

```swift
let classNameWithNamespace = MainViewController.hmr.fullName // "MyApplication.MainViewController"
let classNameWithoutNamespace = MainViewController.hmr.shortName // "MainViewController"
```

### Objects

Use object in external closure:

```swift
let label = UILabel().hmr.use { (label) in
            label.text = "This is a label"
}.object
```

Use object converted to another type in external closure:

```swift
let view = SomeView().use(as: UILabel.self) { (label) in
    label.text = "This is a label"
}.object
```

## License

`Hammer` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.

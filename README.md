# BootstrapProvider

[![Swift3](https://img.shields.io/badge/swift3-compatible-4BC51D.svg?style=flat)](https://developer.apple.com/swift)
[![Vapor Version](https://img.shields.io/badge/Vapor-2-F6CBCA.svg)](http://vapor.codes)

Vapor Provider for Bootstrap Leaf Tags.

## Installation


Swift Package Manager:

Swift3
```swift
dependencies: [
    .Package(url: "https://github.com/khoogheem/BootstrapProvider", majorVersion: 0)
]
```
Swift4
```swift
dependencies: [
    .package(url: "https://github.com/khoogheem/BootstrapProvider", from: "0.5.0"),
]
```


## Setup

Vapor 2:

In your Config+Setup.swit file where you setup your providers you will need to add:
```
try addProvider(BootstrapProvider.Provider.self)
```

If you don't want all of the Tags you can add your own in Droplet+Setup.swift:
```
if let leaf = self.view as? LeafRenderer {
    leaf.stem.register(Button(size: .standard, color: .primary))
    leaf.stem.register(Button(size: .large, color: .primary))
    leaf.stem.register(Button(size: .standard, color: .dark))
}
```

## Tags

Tags are Documented in the [Wiki](https://github.com/khoogheem/BootstrapProvider/wiki)

Example: 
```
#container() {

    #row("justify-content-md-center") {
        <h1>Centered Text</h1>
    }

    #row() {
        #button:primary("Primary")
    }
}

```


## License

BootstrapProvider is available under the MIT license. See the LICENSE file for more info.


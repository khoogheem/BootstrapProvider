# BootstrapProvider

[![Swift3](https://img.shields.io/badge/swift3-compatible-4BC51D.svg?style=flat)](https://developer.apple.com/swift)

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
    .package(url: "https://github.com/khoogheem/BootstrapProvider", from: "0.1.0"),
]
```


## Setup

Vapor 2:

In your Config+Setup.swit file where you setup your providers you will need to add:
```
try addProvider(BootstrapProvider.Provider.self)
```

## Tags

### Button

```
#button:primary("Primary")
#button:secondary("Secondary")
#button:success("Success")
#button:danger("Danger")
#button:warning("Warning")
#button:info("Info")
#button:light("Light")
#button:dark("Dark")
#button:link("Link")
```

Large Size
```
#button:large:primary("Primary")
#button:large:secondary("Secondary")
#button:large:success("Success")
#button:large:danger("Danger")
#button:large:warning("Warning")
#button:large:info("Info")
#button:large:light("Light")
#button:large:dark("Dark")
#button:large:link("Link")
```

Small Size
```
#button:small:primary("Primary")
#button:small:secondary("Secondary")
#button:small:success("Success")
#button:small:danger("Danger")
#button:small:warning("Warning")
#button:small:info("Info")
#button:small:light("Light")
#button:small:dark("Dark")
#button:small:link("Link")
```

### Button Outline

Standard Size
```
#button:outline:primary("Primary")
#button:outline:secondary("Secondary")
#button:outline:success("Success")
#button:outline:danger("Danger")
#button:outline:warning("Warning")
#button:outline:info("Info")
#button:outline:light("Light")
#button:outline:dark("Dark")
```

Large Size
```
#button:outline:large:primary("Primary")
#button:outline:large:secondary("Secondary")
#button:outline:large:success("Success")
#button:outline:large:danger("Danger")
#button:outline:large:warning("Warning")
#button:outline:large:info("Info")
#button:outline:large:light("Light")
#button:outline:large:dark("Dark")
```

Small Size
```
#button:outline:small:primary("Primary")
#button:outline:small:secondary("Secondary")
#button:outline:small:success("Success")
#button:outline:small:danger("Danger")
#button:outline:small:warning("Warning")
#button:outline:small:info("Info")
#button:outline:small:light("Light")
#button:outline:small:dark("Dark")
```



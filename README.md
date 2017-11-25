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

###  Link Button

Link that is a Button.  Takes a Title and a link

Standard Size
```
#link_button:primary("Primary", "http://getbootstrap.com")
#link_button:secondary("Secondary", "http://getbootstrap.com")
#link_button:success("Success", "http://getbootstrap.com")
#link_button:danger("Danger", "http://getbootstrap.com")
#link_button:warning("Warning", "http://getbootstrap.com")
#link_button:info("Info", "http://getbootstrap.com")
#link_button:light("Light", "http://getbootstrap.com")
#link_button:dark("Dark", "http://getbootstrap.com")
```

Large Size
```
#link_button:large:primary("Primary", "http://getbootstrap.com")
#link_button:large:secondary("Secondary", "http://getbootstrap.com")
#link_button:large:success("Success", "http://getbootstrap.com")
#link_button:large:danger("Danger", "http://getbootstrap.com")
#link_button:large:warning("Warning", "http://getbootstrap.com")
#link_button:large:info("Info", "http://getbootstrap.com")
#link_button:large:light("Light", "http://getbootstrap.com")
#link_button:large:dark("Dark", "http://getbootstrap.com")
```

Small Size
```
#link_button:small:primary("Primary", "http://getbootstrap.com")
#link_button:small:secondary("Secondary", "http://getbootstrap.com")
#link_button:small:success("Success", "http://getbootstrap.com")
#link_button:small:danger("Danger", "http://getbootstrap.com")
#link_button:small:warning("Warning", "http://getbootstrap.com")
#link_button:small:info("Info", "http://getbootstrap.com")
#link_button:small:light("Light", "http://getbootstrap.com")
#link_button:small:dark("Dark", "http://getbootstrap.com")
```

###  Link Outline Button

Link that is a  Outline Button.  Takes a Title and a link

Standard Size
```
#link_button:outline:primary("Primary", "http://getbootstrap.com")
#link_button:outline:secondary("Secondary", "http://getbootstrap.com")
#link_button:outline:success("Success", "http://getbootstrap.com")
#link_button:outline:danger("Danger", "http://getbootstrap.com")
#link_button:outline:warning("Warning", "http://getbootstrap.com")
#link_button:outline:info("Info", "http://getbootstrap.com")
#link_button:outline:light("Light", "http://getbootstrap.com")
#link_button:outline:dark("Dark", "http://getbootstrap.com")
```

Large Size
```
#link_button:outline:large:primary("Primary", "http://getbootstrap.com")
#link_button:outline:large:secondary("Secondary", "http://getbootstrap.com")
#link_button:outline:large:success("Success", "http://getbootstrap.com")
#link_button:outline:large:danger("Danger", "http://getbootstrap.com")
#link_button:outline:large:warning("Warning", "http://getbootstrap.com")
#link_button:outline:large:info("Info", "http://getbootstrap.com")
#link_button:outline:large:light("Light", "http://getbootstrap.com")
#link_button:outline:large:dark("Dark", "http://getbootstrap.com")
```

Small Size
```
#link_button:outline:small:primary("Primary", "http://getbootstrap.com")
#link_button:outline:small:secondary("Secondary", "http://getbootstrap.com")
#link_button:outline:small:success("Success", "http://getbootstrap.com")
#link_button:outline:small:danger("Danger", "http://getbootstrap.com")
#link_button:outline:small:warning("Warning", "http://getbootstrap.com")
#link_button:outline:small:info("Info", "http://getbootstrap.com")
#link_button:outline:small:light("Light", "http://getbootstrap.com")
#link_button:outline:small:dark("Dark", "http://getbootstrap.com")
```



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
#link:button:primary("Primary", "http://getbootstrap.com")
#link:button:secondary("Secondary", "http://getbootstrap.com")
#link:button:success("Success", "http://getbootstrap.com")
#link:button:danger("Danger", "http://getbootstrap.com")
#link:button:warning("Warning", "http://getbootstrap.com")
#link:button:info("Info", "http://getbootstrap.com")
#link:button:light("Light", "http://getbootstrap.com")
#link:button:dark("Dark", "http://getbootstrap.com")
```

Large Size
```
#link:button:large:primary("Primary", "http://getbootstrap.com")
#link:button:large:secondary("Secondary", "http://getbootstrap.com")
#link:button:large:success("Success", "http://getbootstrap.com")
#link:button:large:danger("Danger", "http://getbootstrap.com")
#link:button:large:warning("Warning", "http://getbootstrap.com")
#link:button:large:info("Info", "http://getbootstrap.com")
#link:button:large:light("Light", "http://getbootstrap.com")
#link:button:large:dark("Dark", "http://getbootstrap.com")
```

Small Size
```
#link:button:small:primary("Primary", "http://getbootstrap.com")
#link:button:small:secondary("Secondary", "http://getbootstrap.com")
#link:button:small:success("Success", "http://getbootstrap.com")
#link:button:small:danger("Danger", "http://getbootstrap.com")
#link:button:small:warning("Warning", "http://getbootstrap.com")
#link:button:small:info("Info", "http://getbootstrap.com")
#link:button:small:light("Light", "http://getbootstrap.com")
#link:button:small:dark("Dark", "http://getbootstrap.com")
```

###  Link Outline Button

Link that is a  Outline Button.  Takes a Title and a link

Standard Size
```
#link:button:outline:primary("Primary", "http://getbootstrap.com")
#link:button:outline:secondary("Secondary", "http://getbootstrap.com")
#link:button:outline:success("Success", "http://getbootstrap.com")
#link:button:outline:danger("Danger", "http://getbootstrap.com")
#link:button:outline:warning("Warning", "http://getbootstrap.com")
#link:button:outline:info("Info", "http://getbootstrap.com")
#link:button:outline:light("Light", "http://getbootstrap.com")
#link:button:outline:dark("Dark", "http://getbootstrap.com")
```

Large Size
```
#link:button:outline:large:primary("Primary", "http://getbootstrap.com")
#link:button:outline:large:secondary("Secondary", "http://getbootstrap.com")
#link:button:outline:large:success("Success", "http://getbootstrap.com")
#link:button:outline:large:danger("Danger", "http://getbootstrap.com")
#link:button:outline:large:warning("Warning", "http://getbootstrap.com")
#link:button:outline:large:info("Info", "http://getbootstrap.com")
#link:button:outline:large:light("Light", "http://getbootstrap.com")
#link:button:outline:large:dark("Dark", "http://getbootstrap.com")
```

Small Size
```
#link:button:outline:small:primary("Primary", "http://getbootstrap.com")
#link:button:outline:small:secondary("Secondary", "http://getbootstrap.com")
#link:button:outline:small:success("Success", "http://getbootstrap.com")
#link:button:outline:small:danger("Danger", "http://getbootstrap.com")
#link:button:outline:small:warning("Warning", "http://getbootstrap.com")
#link:button:outline:small:info("Info", "http://getbootstrap.com")
#link:button:outline:small:light("Light", "http://getbootstrap.com")
#link:button:outline:small:dark("Dark", "http://getbootstrap.com")
```

###  Alerts

Alert Link
```
#link:alert("Get Bootstrap", "http://getbootstrap.com")
```

Alert
```
#alert:primary(){
    This is a primary alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:secondary(){
    This is a secondary alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:success(){
    This is a success alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:danger(){
    This is a danger alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:warning(){
    This is a warning alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:info(){
    This is a info alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:light(){
    This is a light alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dark(){
    This is a dark alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}

```



## License

BootstrapProvider is available under the MIT license. See the LICENSE file for more info.


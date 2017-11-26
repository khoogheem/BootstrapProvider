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
    .package(url: "https://github.com/khoogheem/BootstrapProvider", from: "0.3.0"),
]
```


## Setup

Vapor 2:

In your Config+Setup.swit file where you setup your providers you will need to add:
```
try addProvider(BootstrapProvider.Provider.self)
```

## Tags

### Layout

#### Containers

**Standard**

*usage:* #container() { }
```
#container() {
    <h1>Container</h1>
    #button:primary("Primary")
}
```

**Fluid**

*usage:* #container:fluid() { }
```
#container:fluid() {
    <h1>Container</h1>
    #button:primary("Primary")
}
```

#### Row

*usage:* #row(<modifier>) { }

*Modifiers*:
- align-items-start
- align-items-center
- align-items-end
- justify-content-start
- justify-content-center
- justify-content-end
- justify-content-around
- justify-content-between
- no-gutters
- justify-content-md-center

```
#row("justify-content-md-center") {
    #button:primary("Primary")
}
#row() {
    #button:primary("Primary")
}
```


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

**Large Size**
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

**Small Size**
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

**Standard Size**
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

**Large Size**
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

**Small Size**
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

**Standard Size**

*usage:* #link:button:<color>(Title, Link)
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

**Large Size**

*usage:* #link:button:large:<color>(Title, Link)
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

**Small Size**

*usage:* #link:button:small:<color>(Title, Link)
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

**Standard Size**

*usage:* #link:button:outline:<color>(Title, Link)
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

**Large Size**

*usage:* #link:button:outline:large:<color>(Title, Link)
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

**Small Size**

*usage:* #link:button:outline:small:<color>(Title, Link)
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

**Alert Link**

*usage:* #link:alert(Title, Link)
```
#link:alert("Get Bootstrap", "http://getbootstrap.com")
```

**Alert**

*usage:* #alert:<color>() {
    Body text
}
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

**Alert Dismissable**

*usage:* #alert:dismiss:<color>() {
    Body text
}
```
#alert:dismiss:primary(){
    This is a primary alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dismiss:secondary(){
    This is a secondary alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dismiss:success(){
    This is a success alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dismiss:danger(){
    This is a danger alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dismiss:warning(){
    This is a warning alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dismiss:info(){
    This is a info alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dismiss:light(){
    This is a light alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}
#alert:dismiss:dark(){
    This is a dark alert with #link:alert("Get Vapor", "http://vapor.codes"). Give it a click if you like.
}

```

###  Badge

**Standard Badge**

*usage:* #badge:<color>(Title)
```
#badge:primary("Primary")
#badge:secondary("Secondary")
#badge:success("Success")
#badge:danger("Danger")
#badge:warning("Warning")
#badge:info("Info")
#badge:light("Light")
#badge:dark("Dark")
```

**Pill Badge**

*usage:* #badge:`pill`:<color>(Title)
```
#badge:pill:primary("Primary")
#badge:pill:secondary("Secondary")
#badge:pill:success("Success")
#badge:pill:danger("Danger")
#badge:pill:warning("Warning")
#badge:pill:info("Info")
#badge:pill:light("Light")
#badge:pill:dark("Dark")
```

**Standard Badge Link**

*usage:* #link:badge:<color>(Title, Link)
```
#link:badge:primary("Primary", "#")
#link:badge:secondary("Secondary", "#")
#link:badge:success("Success", "#")
#link:badge:danger("Danger", "#")
#link:badge:warning("Warning", "#")
#link:badge:info("Info", "#")
#link:badge:light("Light", "#")
#link:badge:dark("Dark", "#")
```

**Pill Badge Link**

*usage:* #link:badge:`pill`:<color>(Title, Link)
```
#link:badge:pill:primary("Primary", "#")
#link:badge:pill:secondary("Secondary", "#")
#link:badge:pill:success("Success", "#")
#link:badge:pill:danger("Danger", "#")
#link:badge:pill:warning("Warning", "#")
#link:badge:pill:info("Info", "#")
#link:badge:pill:light("Light", "#")
#link:badge:pill:dark("Dark", "#")
```


## License

BootstrapProvider is available under the MIT license. See the LICENSE file for more info.


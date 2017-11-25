//
//  Button.swift
//  BootstrapProvider
//
//  Created by Kevin Hoogheem on 11/25/17.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Leaf
import Vapor

public enum ButtonSize {
    case standard
    case large
    case small

    var stringValue: String {
        switch self {
        case .standard:
            return ""
        case .large:
            return "btn-lg"
        case .small:
            return "btn-sm"
        }
    }

    internal var linkValue: String {
        switch self {
        case .standard:
            return ""
        case .large:
            return "large"
        case .small:
            return "small"
        }
    }
}


internal func ButtonText(title: String, color: BootstrapColor, size: ButtonSize) -> String {
    let button = """
    <button type="button" class="btn btn-\(color) \(size.stringValue)">\(title)</button>
    """

    return button
}

internal func ButtonLinkText(title: String, size: ButtonSize) -> String {
    let button = """
    <button type="button" class="btn btn-link \(size.stringValue)">\(title)</button>
    """

    return button
}

internal func ButtonOutlineText(title: String, color: BootstrapColor, size: ButtonSize) -> String {
    let button = """
    <button type="button" class="btn btn-outline-\(color) \(size.stringValue)">\(title)</button>
    """

    return button
}


/// Bootstrap Button
public final class Button: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let size: ButtonSize
    public let color: BootstrapColor
    public let name: String

    public init(size: ButtonSize, color: BootstrapColor) {
        self.size = size
        self.color = color

        if size == .standard {
            self.name = "button:\(color)"
        } else {
            self.name = "button:\(size.linkValue):\(color)"
        }
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title)")
        }

        let button = ButtonText(title: title, color: color, size: size)

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Link Button
public final class ButtonLink: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let size: ButtonSize
    public let name: String

    public init(size: ButtonSize) {
        self.size = size

        if size == .standard {
            self.name = "button:link"
        } else {
            self.name = "button:\(size.linkValue):link"
        }
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title)")
        }

        let button = ButtonLinkText(title: title, size: size)

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Outline Button
public final class ButtonOutline: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let size: ButtonSize
    public let color: BootstrapColor
    public let name: String

    public init(size: ButtonSize, color: BootstrapColor) {
        self.size = size
        self.color = color

        if size == .standard {
            self.name = "button:outline:\(color)"
        } else {
            self.name = "button:outline:\(size.linkValue):\(color)"
        }
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title)")
        }

        let button = ButtonOutlineText(title: title, color: color, size: size)

        return .bytes(button.makeBytes())
    }
}


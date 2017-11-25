//
//  Link.swift
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

internal func LinkButtonText(title: String, href: String, color: BootstrapColor, size: ButtonSize, outline: Bool = false) -> String {

    var button = """
    <a role="button" class="btn btn-
    """

    if outline == false {
        button += """
        \(color) \(size.stringValue)" href="\(href)">\(title)</a>
        """
    } else {
        button += """
        outline-\(color) \(size.stringValue)" href="\(href)">\(title)</a>
        """    }

    return button
}

/// Bootstrap Badge Link
public final class LinkBadge: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let color: BootstrapColor
    public let isPill: Bool
    public let name: String

    public init(color: BootstrapColor, pill: Bool = false) {
        self.color = color
        self.isPill = pill

        if pill == false {
            self.name = "link:badge:\(color)"
        } else {
            self.name = "link:badge:pill:\(color)"
        }
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string,
            let link = arguments[1]?.string else {
                throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title, link)")
        }

        let html = text(title: title, link: link)

        return .bytes(html.makeBytes())
    }

    private func text(title: String, link: String) -> String {

        var html = """
        <a href="\(link)" class="badge badge-\(color)
        """

        if isPill == false {
            html += """
            ">\(title)</a>
            """
        } else {
            html += " "
            html += """
            badge-pill">\(title)</a>
            """    }

        return html
    }
}

/// Bootstrap Alert Link
public final class LinkAlert: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let name: String = "link:alert"

    public init() {}

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string,
            let link = arguments[1]?.string else {
                throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title, link)")
        }

        let html = """
        <a href="\(link)" class="alert-link">\(title)</a>
        """

        return .bytes(html.makeBytes())
    }
}


/// Bootstrap Link as a Button
public final class LinkButton: BasicTag {
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
            self.name = "link:button:\(color)"
        } else {
            self.name = "link:button:\(size.linkValue):\(color)"
        }
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string,
            let link = arguments[1]?.string else {
                throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title, link)")
        }

        let html = LinkButtonText(title: title, href: link, color: color, size: size)

        return .bytes(html.makeBytes())
    }
}

/// Bootstrap Link as a Outline Button
public final class LinkOutlineButton: BasicTag {
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
            self.name = "link:button:outline:\(color)"
        } else {
            self.name = "link:button:outline:\(size.linkValue):\(color)"
        }
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string,
            let link = arguments[1]?.string else {
                throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title, link)")
        }

        let html = LinkButtonText(title: title, href: link, color: color, size: size, outline: true)

        return .bytes(html.makeBytes())
    }
}

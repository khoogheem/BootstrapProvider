//
//  Badge.swift
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

/// Bootstrap Badge Tag
class Badge: BasicTag {

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
            self.name = "badge:\(color)"
        } else {
            self.name = "badge:pill:\(color)"
        }
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
                throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(title)")
        }

        let html = text(title: title)

        return .bytes(html.makeBytes())
    }

    private func text(title: String) -> String {

        var html = """
        <span class="badge badge-\(color)"
        """

        if isPill == false {
            html += """
            ">\(title)</span>
            """
        } else {
            html += " "
            html += """
            badge-pill">\(title)</span>
            """    }

        return html
    }
}

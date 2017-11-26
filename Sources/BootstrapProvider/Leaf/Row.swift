//
//  Row.swift
//  BootstrapProvider
//
//  Created by Kevin Hoogheem on 11/26/17.
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

/// Bootstrap Row Tag
public final class Row: Tag {

    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let name: String

    public init() {
        self.name = "row"
    }

    public func render(stem: Stem, context: LeafContext, value: Node?, leaf: Leaf) throws -> Bytes {
        guard var body = value?.bytes else {
            throw Abort.serverError
        }

        try body.append(contentsOf: stem.render(leaf, with: context))
        body.append(contentsOf: """

        </div>

        """.makeBytes())
        return body
    }

    public func run(tagTemplate: TagTemplate, arguments: ArgumentList) throws -> Node? {
        guard arguments.count <= 1 else {
            throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(<modifier>)")
        }

        var html = """
        <div class="row
        """

        /// Should we check if they used modifiers other then the listed??
        //Modifiers:
        //  align-items-start
        //  align-items-center
        //  align-items-end
        //  justify-content-start
        //  justify-content-center
        //  justify-content-end
        //  justify-content-around
        //  justify-content-between
        //  no-gutters
        //  justify-content-md-center

        if let modifier = arguments[0]?.string {
            html += """
             \(modifier)">

            """
        } else {
            html += """
            ">

            """
        }

        return .bytes(html.makeBytes())
    }
}

//
//  Layout.swift
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

/// Bootstrap Container Tag
public final class Container: Tag {

    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let isFluid: Bool
    public let name: String

    public init(fluid: Bool = false) {
        self.isFluid = fluid

        if fluid == true {
            self.name = "container:fluid"
        } else {
            self.name = "container"
        }
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
        guard arguments.count == 0 else {
            throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)()")
        }

        var html = """
        <div class="container
        """

        if isFluid == false {
            html += """
            ">
            """
        } else {
            html += """
            -fluid">
            """
        }

        return .bytes(html.makeBytes())
    }
}

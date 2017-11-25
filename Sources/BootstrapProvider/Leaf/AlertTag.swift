//
//  AlertTag.swift
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

class AlertTag: Tag {

    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let color: BootstrapColor
    public let dismissable: Bool
    public let name: String

    public init(color: BootstrapColor, dismiss: Bool = false) {
        self.color = color
        self.dismissable = dismiss
        
        if dismiss == false {
            self.name = "alert:\(color)"
        } else {
            self.name = "alert:dismiss:\(color)"
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

    func run(tagTemplate: TagTemplate, arguments: ArgumentList) throws -> Node? {
        guard arguments.count == 0 else {
            throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)()")
        }

        let html = text()

        return .bytes(html.makeBytes())
    }

    private func text() -> String {

        var html = """
        <div class="alert alert-\(color)"
        """

        if dismissable == false {
            html += """
            role="alert">

            """
        } else {
            html += """
            alert-dismissible fade show role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>

            """    }

        return html
    }

}


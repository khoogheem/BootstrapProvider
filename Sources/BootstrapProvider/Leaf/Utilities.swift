//
//  Utilities.swift
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


/// Bootstrap Close Icon
public final class CloseIcon: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public let name: String

    public init() {
        self.name = "close"
    }

    public func run(arguments: ArgumentList) throws -> Node? {
        guard arguments.count <= 1 else {
            throw Error.invalidSyntax("\(self.name) parse error: expected \(self.name)(<aria-lable>)")
        }

        let label = arguments[0]?.string ?? "Close"

        let html = text(label: label)

        return .bytes(html.makeBytes())
    }

    private func text(label: String) -> String {

        let html = """
        <button type="button" class="close" aria-label="\(label)">
            <span aria-hidden="true">&times;</span>
        </button>
        """

        return html
    }
}


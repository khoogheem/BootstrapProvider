//
//  Button.swift
//  BootstrapProvider
//
//  Created by Kevin Hoogheem on 11/25/17.
//

import Leaf
import Vapor

/// Bootstrap Button
public final class ButtonPrimary: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }
    
    public init() {}
    public let name = "button:primary"
    
    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:primary parse error: expected button:primary(title)")
        }

        let button = """
            <button type="button" class="btn btn-primary">\(title)</button>
            """
        
        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Secondary Button
public final class ButtonSecondary: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:secondary"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:secondary parse error: expected button:secondary(title)")
        }

        let button = """
        <button type="button" class="btn btn-secondary">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

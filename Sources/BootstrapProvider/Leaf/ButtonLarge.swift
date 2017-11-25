//
//  Button.swift
//  BootstrapProvider
//
//  Created by Kevin Hoogheem on 11/25/17.
//

import Leaf
import Vapor

/// Bootstrap Button Large
public final class ButtonLargePrimary: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }
    
    public init() {}
    public let name = "button:large:primary"
    
    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:primary parse error: expected button:large:primary(title)")
        }

        let button = """
            <button type="button" class="btn btn-primary btn-lg">\(title)</button>
            """
        
        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Secondary Button Large
public final class ButtonLargeSecondary: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:secondary"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:secondary parse error: expected button:large:secondary(title)")
        }

        let button = """
        <button type="button" class="btn btn-secondary btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Success Button Large
public final class ButtonLargeSuccess: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:success"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:success parse error: expected button:large:success(title)")
        }

        let button = """
        <button type="button" class="btn btn-success btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Danger Button Large
public final class ButtonLargeDanger: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:danger"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:danger parse error: expected button:large:danger(title)")
        }

        let button = """
        <button type="button" class="btn btn-danger btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Warning Button Large
public final class ButtonLargeWarning: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:warning"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:warning parse error: expected button:large:warning(title)")
        }

        let button = """
        <button type="button" class="btn btn-warning btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Info Button Large
public final class ButtonLargeInfo: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:info"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:info parse error: expected button:large:info(title)")
        }

        let button = """
        <button type="button" class="btn btn-info btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Light Button Large
public final class ButtonLargeLight: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:light"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:light parse error: expected button:large:light(title)")
        }

        let button = """
        <button type="button" class="btn btn-light btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Dark Button Large
public final class ButtonLargeDark: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:dark"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:dark parse error: expected button:large:dark(title)")
        }

        let button = """
        <button type="button" class="btn btn-dark btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Link Button Large
public final class ButtonLargeLink: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:large:link"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:large:link parse error: expected button:large:link(title)")
        }

        let button = """
        <button type="button" class="btn btn-link btn-lg">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

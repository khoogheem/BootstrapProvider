//
//  Button.swift
//  BootstrapProvider
//
//  Created by Kevin Hoogheem on 11/25/17.
//

import Leaf
import Vapor

/// Bootstrap Button Large
public final class ButtonSmallPrimary: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }
    
    public init() {}
    public let name = "button:small:primary"
    
    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:primary parse error: expected button:small:primary(title)")
        }

        let button = """
            <button type="button" class="btn btn-primary btn-sm">\(title)</button>
            """
        
        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Secondary Button Large
public final class ButtonSmallSecondary: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:secondary"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:secondary parse error: expected button:small:secondary(title)")
        }

        let button = """
        <button type="button" class="btn btn-secondary btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Success Button Large
public final class ButtonSmallSuccess: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:success"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:success parse error: expected button:small:success(title)")
        }

        let button = """
        <button type="button" class="btn btn-success btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Danger Button Large
public final class ButtonSmallDanger: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:danger"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:danger parse error: expected button:small:danger(title)")
        }

        let button = """
        <button type="button" class="btn btn-danger btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Warning Button Large
public final class ButtonSmallWarning: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:warning"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:warning parse error: expected button:small:warning(title)")
        }

        let button = """
        <button type="button" class="btn btn-warning btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Info Button Large
public final class ButtonSmallInfo: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:info"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:info parse error: expected button:small:info(title)")
        }

        let button = """
        <button type="button" class="btn btn-info btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Light Button Large
public final class ButtonSmallLight: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:light"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:light parse error: expected button:small:light(title)")
        }

        let button = """
        <button type="button" class="btn btn-light btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Dark Button Large
public final class ButtonSmallDark: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:dark"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:dark parse error: expected button:small:dark(title)")
        }

        let button = """
        <button type="button" class="btn btn-dark btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Link Button Large
public final class ButtonSmallLink: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:small:link"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:small:link parse error: expected button:small:link(title)")
        }

        let button = """
        <button type="button" class="btn btn-link btn-sm">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

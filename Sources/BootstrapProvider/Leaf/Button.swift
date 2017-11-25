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

/// Bootstrap Success Button
public final class ButtonSuccess: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:success"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:success parse error: expected button:success(title)")
        }

        let button = """
        <button type="button" class="btn btn-success">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Danger Button
public final class ButtonDanger: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:danger"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:danger parse error: expected button:danger(title)")
        }

        let button = """
        <button type="button" class="btn btn-danger">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Warning Button
public final class ButtonWarning: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:warning"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:warning parse error: expected button:warning(title)")
        }

        let button = """
        <button type="button" class="btn btn-warning">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Info Button
public final class ButtonInfo: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:info"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:info parse error: expected button:info(title)")
        }

        let button = """
        <button type="button" class="btn btn-info">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Light Button
public final class ButtonLight: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:light"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:light parse error: expected button:light(title)")
        }

        let button = """
        <button type="button" class="btn btn-light">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Dark Button
public final class ButtonDark: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:dark"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:dark parse error: expected button:dark(title)")
        }

        let button = """
        <button type="button" class="btn btn-dark">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

/// Bootstrap Link Button
public final class ButtonLink: BasicTag {
    public enum Error: Swift.Error {
        case invalidSyntax(String)
    }

    public init() {}
    public let name = "button:link"

    public func run(arguments: ArgumentList) throws -> Node? {
        guard let title = arguments[0]?.string else {
            throw Error.invalidSyntax("button:link parse error: expected button:link(title)")
        }

        let button = """
        <button type="button" class="btn btn-link">\(title)</button>
        """

        return .bytes(button.makeBytes())
    }
}

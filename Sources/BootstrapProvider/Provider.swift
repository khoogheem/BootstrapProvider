//
//  Provider.swift
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

import Vapor
import LeafProvider

public enum BootstrapColor: String {
    case primary
    case secondary
    case success
    case danger
    case warning
    case info
    case light
    case dark

    internal static var allColors: [BootstrapColor] {
        return [BootstrapColor.primary,
                BootstrapColor.secondary,
                BootstrapColor.success,
                BootstrapColor.danger,
                BootstrapColor.warning,
                BootstrapColor.info,
                BootstrapColor.light,
                BootstrapColor.dark,
        ]
    }
}


public final class Provider: Vapor.Provider {
    public static var repositoryName: String = "khoogheem:bootstrap-provider"

    public func boot(_ config: Config) throws {
    }

    public func boot(_ droplet: Droplet) throws {

        guard let renderer = droplet.view as? LeafRenderer else {
            print("BootstrapProvider only supports Leaf as a renderer")
            return
        }

        /// Add Standard Buttons
        addButtons(renderer)
        /// Add Link Buttons
        addLinkButtons(renderer)
        /// Link Alert
        renderer.stem.register(LinkAlert())
        /// Alerts
        addAlerts(renderer)
        /// Badges
        addBadges(renderer)

    }

    public func beforeRun(_ droplet: Droplet) throws {}

    public init(config: Config) throws {}

}

// MARK: - Buttons
extension Provider {

    /// Adds in Buttons
    ///
    /// - Parameter renderer: LeafRenderer
    private func addButtons(_ renderer: LeafRenderer) {

        for color in BootstrapColor.allColors {
            /// Buttons Standard Size
            renderer.stem.register(Button(size: .standard, color: color))
            /// Buttons Large Size
            renderer.stem.register(Button(size: .large, color: color))
            /// Buttons Small Size
            renderer.stem.register(Button(size: .small, color: color))
            /// Button Outline Standard Size
            renderer.stem.register(ButtonOutline(size: .standard, color: color))
            /// Button Outline Large Size
            renderer.stem.register(ButtonOutline(size: .large, color: color))
            /// Button Outline Small Size
            renderer.stem.register(ButtonOutline(size: .small, color: color))
        }
    }
}

// MARK: - Link Button
extension Provider {

    /// Adds in Link Buttons
    ///
    /// - Parameter renderer: LeafRenderer
    private func addLinkButtons(_ renderer: LeafRenderer) {

        for color in BootstrapColor.allColors {
            /// Link Button Standard Size
            renderer.stem.register(LinkButton(size: .standard, color: color))
            /// Link Button Large Size
            renderer.stem.register(LinkButton(size: .large, color: color))
            /// Link Button Small Size
            renderer.stem.register(LinkButton(size: .small, color: color))
            /// Link Button Outline Standard Size
            renderer.stem.register(LinkOutlineButton(size: .standard, color: color))
            /// Link Button Outline Large Size
            renderer.stem.register(LinkOutlineButton(size: .large, color: color))
            /// Link Button Outline Small Size
            renderer.stem.register(LinkOutlineButton(size: .small, color: color))
        }
    }
}

// MARK: - Alerts
extension Provider {

    /// Adds in Alerts
    ///
    /// - Parameter renderer: LeafRenderer
    private func addAlerts(_ renderer: LeafRenderer) {

        for color in BootstrapColor.allColors {
            /// Add Alerts
            renderer.stem.register(AlertTag(color: color))
            /// Add Alerts Dismissable
            renderer.stem.register(AlertTag(color: color, dismiss: true))

        }
    }
}

// MARK: - Badges
extension Provider {

    /// Adds in Badges
    ///
    /// - Parameter renderer: LeafRenderer
    private func addBadges(_ renderer: LeafRenderer) {

        for color in BootstrapColor.allColors {
            /// Add Badge
            renderer.stem.register(Badge(color: color))
            /// Add Pill Badge
            renderer.stem.register(Badge(color: color, pill: true))

        }
    }
}

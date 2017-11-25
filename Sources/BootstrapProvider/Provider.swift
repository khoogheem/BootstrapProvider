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

    }

    public func beforeRun(_ droplet: Droplet) throws {
    }

    public init(config: Config) throws {
    }

}

// MARK: - Buttons
extension Provider {

    private func addButtons(_ renderer: LeafRenderer) {

        ///
        /// Buttons Standard Size
        ///
        renderer.stem.register(Button(size: .standard, color: .primary))
        renderer.stem.register(Button(size: .standard, color: .secondary))
        renderer.stem.register(Button(size: .standard, color: .success))
        renderer.stem.register(Button(size: .standard, color: .danger))
        renderer.stem.register(Button(size: .standard, color: .warning))
        renderer.stem.register(Button(size: .standard, color: .info))
        renderer.stem.register(Button(size: .standard, color: .light))
        renderer.stem.register(Button(size: .standard, color: .dark))
        renderer.stem.register(ButtonLink(size: .standard))
        ///
        /// Buttons Large Size
        ///
        renderer.stem.register(Button(size: .large, color: .primary))
        renderer.stem.register(Button(size: .large, color: .secondary))
        renderer.stem.register(Button(size: .large, color: .success))
        renderer.stem.register(Button(size: .large, color: .danger))
        renderer.stem.register(Button(size: .large, color: .warning))
        renderer.stem.register(Button(size: .large, color: .info))
        renderer.stem.register(Button(size: .large, color: .light))
        renderer.stem.register(Button(size: .large, color: .dark))
        renderer.stem.register(ButtonLink(size: .large))
        ///
        /// Buttons Small Size
        ///
        renderer.stem.register(Button(size: .small, color: .primary))
        renderer.stem.register(Button(size: .small, color: .secondary))
        renderer.stem.register(Button(size: .small, color: .success))
        renderer.stem.register(Button(size: .small, color: .danger))
        renderer.stem.register(Button(size: .small, color: .warning))
        renderer.stem.register(Button(size: .small, color: .info))
        renderer.stem.register(Button(size: .small, color: .light))
        renderer.stem.register(Button(size: .small, color: .dark))
        renderer.stem.register(ButtonLink(size: .small))
        ///
        /// Button Outline Standard Size
        ///
        renderer.stem.register(ButtonOutline(size: .standard, color: .primary))
        renderer.stem.register(ButtonOutline(size: .standard, color: .secondary))
        renderer.stem.register(ButtonOutline(size: .standard, color: .success))
        renderer.stem.register(ButtonOutline(size: .standard, color: .danger))
        renderer.stem.register(ButtonOutline(size: .standard, color: .warning))
        renderer.stem.register(ButtonOutline(size: .standard, color: .info))
        renderer.stem.register(ButtonOutline(size: .standard, color: .light))
        renderer.stem.register(ButtonOutline(size: .standard, color: .dark))
        ///
        /// Button Outline Large Size
        ///
        renderer.stem.register(ButtonOutline(size: .large, color: .primary))
        renderer.stem.register(ButtonOutline(size: .large, color: .secondary))
        renderer.stem.register(ButtonOutline(size: .large, color: .success))
        renderer.stem.register(ButtonOutline(size: .large, color: .danger))
        renderer.stem.register(ButtonOutline(size: .large, color: .warning))
        renderer.stem.register(ButtonOutline(size: .large, color: .info))
        renderer.stem.register(ButtonOutline(size: .large, color: .light))
        renderer.stem.register(ButtonOutline(size: .large, color: .dark))
        ///
        /// Button Outline Small Size
        ///
        renderer.stem.register(ButtonOutline(size: .small, color: .primary))
        renderer.stem.register(ButtonOutline(size: .small, color: .secondary))
        renderer.stem.register(ButtonOutline(size: .small, color: .success))
        renderer.stem.register(ButtonOutline(size: .small, color: .danger))
        renderer.stem.register(ButtonOutline(size: .small, color: .warning))
        renderer.stem.register(ButtonOutline(size: .small, color: .info))
        renderer.stem.register(ButtonOutline(size: .small, color: .light))
        renderer.stem.register(ButtonOutline(size: .small, color: .dark))

    }
}

// MARK: - Link Button
extension Provider {

    private func addLinkButtons(_ renderer: LeafRenderer) {

        ///
        /// Link Button Standard Size
        ///
        renderer.stem.register(LinkButton(size: .standard, color: .primary))
        renderer.stem.register(LinkButton(size: .standard, color: .secondary))
        renderer.stem.register(LinkButton(size: .standard, color: .success))
        renderer.stem.register(LinkButton(size: .standard, color: .danger))
        renderer.stem.register(LinkButton(size: .standard, color: .warning))
        renderer.stem.register(LinkButton(size: .standard, color: .info))
        renderer.stem.register(LinkButton(size: .standard, color: .light))
        renderer.stem.register(LinkButton(size: .standard, color: .dark))
        ///
        /// Link Button Large Size
        ///
        renderer.stem.register(LinkButton(size: .large, color: .primary))
        renderer.stem.register(LinkButton(size: .large, color: .secondary))
        renderer.stem.register(LinkButton(size: .large, color: .success))
        renderer.stem.register(LinkButton(size: .large, color: .danger))
        renderer.stem.register(LinkButton(size: .large, color: .warning))
        renderer.stem.register(LinkButton(size: .large, color: .info))
        renderer.stem.register(LinkButton(size: .large, color: .light))
        renderer.stem.register(LinkButton(size: .large, color: .dark))
        ///
        /// Link Button Small Size
        ///
        renderer.stem.register(LinkButton(size: .small, color: .primary))
        renderer.stem.register(LinkButton(size: .small, color: .secondary))
        renderer.stem.register(LinkButton(size: .small, color: .success))
        renderer.stem.register(LinkButton(size: .small, color: .danger))
        renderer.stem.register(LinkButton(size: .small, color: .warning))
        renderer.stem.register(LinkButton(size: .small, color: .info))
        renderer.stem.register(LinkButton(size: .small, color: .light))
        renderer.stem.register(LinkButton(size: .small, color: .dark))
        ///
        /// Link Button Outline Standard Size
        ///
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .primary))
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .secondary))
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .success))
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .danger))
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .warning))
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .info))
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .light))
        renderer.stem.register(LinkOutlineButton(size: .standard, color: .dark))
        ///
        /// Link Button Outline Large Size
        ///
        renderer.stem.register(LinkOutlineButton(size: .large, color: .primary))
        renderer.stem.register(LinkOutlineButton(size: .large, color: .secondary))
        renderer.stem.register(LinkOutlineButton(size: .large, color: .success))
        renderer.stem.register(LinkOutlineButton(size: .large, color: .danger))
        renderer.stem.register(LinkOutlineButton(size: .large, color: .warning))
        renderer.stem.register(LinkOutlineButton(size: .large, color: .info))
        renderer.stem.register(LinkOutlineButton(size: .large, color: .light))
        renderer.stem.register(LinkOutlineButton(size: .large, color: .dark))
        ///
        /// Link Button Outline Small Size
        ///
        renderer.stem.register(LinkOutlineButton(size: .small, color: .primary))
        renderer.stem.register(LinkOutlineButton(size: .small, color: .secondary))
        renderer.stem.register(LinkOutlineButton(size: .small, color: .success))
        renderer.stem.register(LinkOutlineButton(size: .small, color: .danger))
        renderer.stem.register(LinkOutlineButton(size: .small, color: .warning))
        renderer.stem.register(LinkOutlineButton(size: .small, color: .info))
        renderer.stem.register(LinkOutlineButton(size: .small, color: .light))
        renderer.stem.register(LinkOutlineButton(size: .small, color: .dark))
    }
}


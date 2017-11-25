//
//  Provider.swift
//  BootstrapProvider
//
//  Created by Kevin Hoogheem on 11/25/17.
//

import Vapor
import LeafProvider

public final class Provider: Vapor.Provider {
    public static var repositoryName: String = "khoogheem:bootstrap-provider"

    public func boot(_ config: Config) throws {
    }

    public func boot(_ droplet: Droplet) throws {

        guard let renderer = droplet.view as? LeafRenderer else {
            print("BootstrapProvider only supports Leaf as a renderer")
            return
        }

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

    }

    public func beforeRun(_ droplet: Droplet) throws {
    }

    public init(config: Config) throws {
    }

}

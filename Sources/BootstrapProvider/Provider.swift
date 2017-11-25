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
        renderer.stem.register(ButtonPrimary())
        renderer.stem.register(ButtonSecondary())
        renderer.stem.register(ButtonSuccess())
        renderer.stem.register(ButtonDanger())
        renderer.stem.register(ButtonWarning())
        renderer.stem.register(ButtonInfo())
        renderer.stem.register(ButtonLight())
        renderer.stem.register(ButtonDark())
        renderer.stem.register(ButtonLink())
        ///
        /// Buttons Large Size
        ///
        renderer.stem.register(ButtonLargePrimary())
        renderer.stem.register(ButtonLargeSecondary())
        renderer.stem.register(ButtonLargeSuccess())
        renderer.stem.register(ButtonLargeDanger())
        renderer.stem.register(ButtonLargeWarning())
        renderer.stem.register(ButtonLargeInfo())
        renderer.stem.register(ButtonLargeLight())
        renderer.stem.register(ButtonLargeDark())
        renderer.stem.register(ButtonLargeLink())

    }

    public func beforeRun(_ droplet: Droplet) throws {
    }

    public init(config: Config) throws {
    }

}

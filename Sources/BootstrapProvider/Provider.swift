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
        /// Buttons
        ///
        renderer.stem.register(ButtonPrimary())
        renderer.stem.register(ButtonSecondary())

    }

    public func beforeRun(_ droplet: Droplet) throws {
    }

    public init(config: Config) throws {
    }

}

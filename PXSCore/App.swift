//
//  AppDelegate.swift
//  PXSCore
//
//  Created by khayal on 30.06.23.
//

import XSCore

@main class App: Delegate {
    override var connection: Connector {
        Connector(connections: [
            Firebase(),
            Dynatrace(),
            Localise(),
        ])
    }
}

//
//  AppDelegate.swift
//  XSCore
//
//  Created by Xayal Suleymani on 07/01/2023.
//  Copyright (c) 2023 Xayal Suleymani. All rights reserved.
//

import XSCore

// MARK: APP DELEGATE

@main class App: Delegate {
    
    override var project: Projectable {
        Core()
    }
    
    override var connection: Connector {
        Connector(connections: [
            Firebase(),
            Dynatrace(),
            Localise(),
        ])
    }
}


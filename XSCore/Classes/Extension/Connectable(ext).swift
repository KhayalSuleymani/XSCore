//
//  Connectable(ext).swift
//  XSCore
//
//  Created by khayal on 30.06.23.
//

import Foundation

// MARK: ADAPTER DESIGN PATTERN

open class Connector: NSObject, Connectable {
    
    let connections: [Connectable]
    
    public init (connections: [Connectable] = []) {
        self.connections = connections
    }
    
    open func application(_ application: Application,
                          didFinishLaunchingWithOptions launchOptions: LaunchOptions? = nil) -> Bool {
        connections.map {
            $0.application!(application, didFinishLaunchingWithOptions: launchOptions)
        }.allSatisfy { $0 }
    }
}

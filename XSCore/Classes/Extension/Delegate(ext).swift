//
//  Delegate(ext).swift
//  XSCore
//
//  Created by khayal on 30.06.23.
//

import XCoordinator

public protocol Connectable: ApplicationDelegate { }

@objc extension Delegate: Connectable {
    open func application(_ application: Application, didFinishLaunchingWithOptions launchOptions: LaunchOptions? = nil) -> Bool {
        
        project.setRoot(for: window)
        
        _ = connection.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        return true
    }
}

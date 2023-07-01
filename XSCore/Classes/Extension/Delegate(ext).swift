//
//  Delegate(ext).swift
//  XSCore
//
//  Created by khayal on 30.06.23.
//

import Foundation

public protocol Connectable: ApplicationDelegate { }

extension Delegate: Connectable {
    public func application(_ application: Application, didFinishLaunchingWithOptions launchOptions: LaunchOptions? = nil) -> Bool {
        connection.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}

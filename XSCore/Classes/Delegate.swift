//
//  Delegate.swift
//  XSCore
//
//  Created by khayal on 30.06.23.
//

import Foundation

open class Delegate: Responder {
    
    let window = Window()
    
    open var project: Projectable {
        Project<AnyRoute>()
    }
    
    open var connection: Connector {
        Connector()
    }
}

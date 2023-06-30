//
//  Delegate.swift
//  XSCore
//
//  Created by khayal on 30.06.23.
//

import Foundation

open class Delegate: Responder {
    open var connection: Connector {
        Connector()
    }
}

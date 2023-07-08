//
//  Object.swift
//  XSCore
//
//  Created by khayal on 07.07.23.
//

import SerializedSwift

public typealias Backend<Value> = Serialized<Value>
public protocol Backendable: Serializable { }

extension Backend where T: Zero {
    public convenience init () {
        self.init(default: .zero)
    }
}

open class Object: Codable, Backendable {
    
    @Backend() public var description: String
    
    required public init() { }
}

open class Response<T>: Codable, Backendable {
    
    @Backend() public var data: T?
    
    required public init() { }
}

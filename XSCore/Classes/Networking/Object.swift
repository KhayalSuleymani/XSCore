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

open class Response<T>: Codable, Backendable {
    required public init() { }
}


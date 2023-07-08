//
//  Networkable.swift
//  XSCore
//
//  Created by khayal on 07.07.23.
//

import Foundation

public protocol NetworkServiceDelegate: AnyObject {
    
    typealias Completion<T> = (Result<T>) -> ()
    
    func request<T:Object>(_ type: T.Type,
                           endPoint: EndPointType,
                           completion: @escaping (Completion<T>))
    func requestArray<T:Object>(_ type: T.Type,
                           endPoint: EndPointType,
                           completion: @escaping (Completion<[T]>))
}

open class NetworkService: NetworkServiceDelegate {
    
    public init () { }
    
    open var service: NetworkServiceDelegate {
        switch Environment.environment() {
        case .mock: return MockNetworkService.shared
        case _:     return self
        }
    }
    
    open func request<T>(_ type: T.Type, endPoint: EndPointType,
                         completion: @escaping (Completion<T>)) where T : Object { }
    
    open func requestArray<T>(_ type: T.Type, endPoint: EndPointType,
                        completion: @escaping (Completion<[T]>)) where T : Object { }
}

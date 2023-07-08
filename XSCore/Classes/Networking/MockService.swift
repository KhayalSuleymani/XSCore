//
//  MockService.swift
//  XSCore
//
//  Created by khayal on 08.07.23.
//

import Foundation

open class MockNetworkService: NetworkService {
    
    public static let shared = MockNetworkService()
    
    open override func request<T>(_ type: T.Type,
                           endPoint: EndPointType,
                           completion: @escaping (Completion<T>)) where T : Object {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            if let url = Bundle(for: T.self).url(forResource: endPoint.mockName, withExtension: "json") {
                if let data = try? Data(contentsOf: url) {
                    if let json = try? JSONDecoder().decode(Response<T>.self, from: data) {
                        guard let data = json.data else {
                            return
                        }
                        completion(.success(data))
                    }
                }
            }
        }
    }
    
    open override func requestArray<T>(_ type: T.Type,
                                endPoint: EndPointType,
                                completion: @escaping (Completion<[T]>)) where T : Object {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            if let url = Bundle(for: T.self).url(forResource: endPoint.mockName, withExtension: "json") {
                if let data = try? Data(contentsOf: url) {
                    if let json = try? JSONDecoder().decode(Response<[T]>.self, from: data) {
                        guard let data = json.data else {
                            return
                        }
                        completion(.success(data))
                    }
                }
            }
        }
    }
}

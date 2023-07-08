//
//  Home(ns).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

protocol HomeNetworkServiceDelegate: NetworkServiceDelegate {
    func request(_ completion: @escaping Completion<HomeDTO>)
}

class HomeNetworkService: NetworkService, HomeNetworkServiceDelegate {
    
    static let shared = HomeNetworkService()
    
    typealias EndPoint = HomeEndPoint
    
    func request(_ completion: @escaping Completion<HomeDTO>) {
        service.request(HomeDTO.self,
                        endPoint: EndPoint.home,
                        completion: completion)
    }
}

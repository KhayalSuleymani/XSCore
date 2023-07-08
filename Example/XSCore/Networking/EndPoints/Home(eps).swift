//
//  Home(eps).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore
import Alamofire

enum HomeEndPoint: EndPointType {
    
    case home
    
    var path: String {
        ".../"
    }
    
    var httpMethod: HTTPMethod {
        .post
    }
    
    var headers: HTTPHeaders? {
        nil
    }

    var parameters: Parameters? {
        nil
    }
    
    var encoding: ParameterEncoding {
        URLEncoding.default
    }
    
    var mockName: String { "home" }
    var isRefresh: Bool { true }
    
    func asURL() throws -> URL {
        URL(string: .zero)!
    }
}

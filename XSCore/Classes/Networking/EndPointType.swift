//
//  EndPointType.swift
//  XSCore
//
//  Created by khayal on 07.07.23.
//

import Alamofire

public protocol EndPointType: URLConvertible {
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var headers: HTTPHeaders? { get }
    var parameters: Parameters? { get }
    var encoding: ParameterEncoding { get }
    var mockName: String { get }
    var isRefresh: Bool { get }
}

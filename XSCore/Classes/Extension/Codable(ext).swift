//
//  Codable(ext).swift
//  XSCore
//
//  Created by khayal on 07.07.23.
//

import Alamofire

extension Encodable {
    public func params() -> Parameters {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        if let params = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? Parameters {
            return params
        }
        return [:]
    }
}

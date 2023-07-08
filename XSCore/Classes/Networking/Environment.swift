//
//  Environment.swift
//  Common
//
//  Created by khayal on 04.02.23.
//

import Foundation

public enum Environment: String, Codable, CaseIterable {
    
    case dev
    case test
    case release
    case mock
    
    public static func environment() -> Environment {
        #if targetEnvironment(simulator)
         guard let value = ProcessInfo.processInfo.environment["KEY"] else {
            return .mock
         }
         return Environment(rawValue: value)!
        #elseif dev
         return .dev
        #elseif test
         return .test
        #elseif release
         return .release
        #else
         return .mock
        #endif
    }
}

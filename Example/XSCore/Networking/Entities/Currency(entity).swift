//
//  Currency.swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

public enum Currency: String, Codable {
    case azn  = "AZN"
    case usd  = "USD"
    case euro = "EUR"
    case rubl = "RUB"
    case gbp  = "GBP"
}

extension Currency: Zero {
    
    public func symbol() -> String {
        switch self {
        case .azn:
            return "₼"
        case .euro:
            return "€"
        case .usd:
            return "$"
        case .rubl:
            return "₽"
        case .gbp:
            return "£"
        }
    }
    
    public static var zero: Currency {
        .azn
    }
    
    public func format (_ amount: Double) -> String {
        guard let amount = NumberFormatter.amount()
            .string(from: .init(value: amount)) else { return .zero + "\(symbol())" }
        return "\(amount) \(symbol())"
    }
    
    public func format2 (_ amount: Double) -> String {
        guard let amount = NumberFormatter.amount()
            .string(from: .init(value: amount)) else { return .zero + "\(rawValue)" }
        return "\(amount) \(rawValue)"
    }
}

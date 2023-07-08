//
//  Transaction(entity).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

public class Transaction: Object {
    @Backend() public var counterParty: String
    @Backend() public var referenceNumber: String
    @Backend() public var crAmount: Double
    @Backend() public var drAmount: Double
    @Backend() public var paidAt: String
    @Backend() public var currency: Currency
    @Backend() public var transactionType: `Type`
}

extension Transaction {
    public enum `Type`: String, Codable {
        case credit = "CREDIT"
        case debit = "DEBIT"
    }
}


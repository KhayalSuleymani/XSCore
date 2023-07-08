//
//  Account(entity).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

public class Account: Object {
    @Backend() public var blockedAmount: Double
    @Backend() public var bankCode: String
    @Backend() public var accountCategory: String
    @Backend() public var accountClass: String
    @Backend() public var accountClassDesc: String
    @Backend() public var creditIsAllowed: Bool
    @Backend() public var debitIsAllowed: Bool
    @Backend() public var disposal: Bool
    @Backend() public var corporateCardAccount: Bool
    @Backend() public var accountOpenDate: String
    @Backend() public var tin: String
    @Backend() public var blockers: [Blocker]
    @Backend() public var status: String
    @Backend() public var accountStatus: String
    @Backend() public var accountBranch: Branch?
}

extension Account {
    
    public class Branch: Object {
        @Backend() public var branchNumber: String
        @Backend() public var branchName: String
    }
    
    public class Blocker: Object { }
}

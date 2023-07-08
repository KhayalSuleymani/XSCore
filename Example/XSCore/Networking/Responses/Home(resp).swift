//
//  Home(resp).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

public class HomeDTO: Object {
    @Backend() public var userInfo: User?
    @Backend() public var accounts: [Account]
    @Backend() public var pendings: [Transfer]
    @Backend() public var totalBalances: [Balance]
    @Backend() public var transactions: [Transaction]
}

extension HomeDTO {

    public class Balance: Object {
        @Backend() public var currency: Currency
        @Backend() public var balance: Double
        @Backend() public var imageUrl: String
    }
    
    public var corporateCardAccounts: [Account] {
        accounts.filter({ $0.corporateCardAccount })
    }
    
    public var corporateAccounts: [Account] {
        accounts.filter({ !$0.corporateCardAccount })
    }
}

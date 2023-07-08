//
//  First(m).swift
//  XSCore_Example
//
//  Created by khayal on 05.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

class FirstViewItem: ViewItem<HomeDTO>, FirstViewDelegate {
    
    private(set) var account: (Account) -> () = { _ in }
    private(set) var transaction: (Transaction) -> () = { _ in }
    
    override var sections: [S] {
        
        let s1 = S(rows: data.accounts.enumerated().map { _, data in
            R(text: "Hi: \(data.accountCategory)",
              selection: weaks(weak: self, {
                $0.account(data)
            }))
        })
        
        let s2 = S(rows: data.transactions.enumerated().map { _, data in
            R(text: "Hi: \(data.description)",
              selection: weaks(weak: self, {
                $0.transaction(data)
            }))
        })
        
        return [ s1, s2 ]
    }
    
    @discardableResult
    func onAccount(_ completion: @escaping (Account) -> ()) -> Self {
        self.account = completion
        return self
    }
    
    @discardableResult
    func onTransaction(_ completion: @escaping (Transaction) -> ()) -> Self {
        self.transaction = completion
        return self
    }
}

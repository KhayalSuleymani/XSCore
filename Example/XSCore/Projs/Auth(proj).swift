//
//  Auth(proj).swift
//  XSCore_Example
//
//  Created by khayal on 06.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

enum AuthorizeRoute: Routable, Zero {
    case first(HomeDTO)
    case account(Account)
    case transaction(Transaction)
    static var zero: AuthorizeRoute {
        .first(.init())
    }
}

class Authorize: Project<AuthorizeRoute> {
    override func prepareTransition(for route: AuthorizeRoute) -> NavigationTransition {
        switch route {
        case let .first(d):
            let m  = FirstViewItem(d)
            let v  = FirstView()
            let vm = FirstViewModel(m)
            
            v.onLoad { v in
                vm.change(state: {
                    v.change(state: $0)
                })
            }
            
            m.onAccount {
                self.trigger(.account($0))
            }.onTransaction {
                self.trigger(.transaction($0))
            }
            
            return .show(v)
        case let .account(d):
            let m = AccountViewItem(d)
            let v = AccountView()
            let _ = AccountViewModel(m)
            
            v.onLoad { v in
                v.change(state: .s(.success(m)))
            }
            
            return .show(v)
        case let .transaction(d):
            let m = TransactionViewItem(d)
            let v = TransactionView()
            let _ = TransactionViewModel(m)
            
            v.onLoad { v in
                v.change(state: .s(.success(m)))
            }
            
            return .show(v)
        }
    }
}

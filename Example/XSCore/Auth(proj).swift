//
//  Auth(proj).swift
//  XSCore_Example
//
//  Created by khayal on 06.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

enum AuthorizeRoute: Routable, Zero {
    
    case first
    
    static var zero: AuthorizeRoute {
        .first
    }
}

class Authorize: Project<AuthorizeRoute> {
    override func prepareTransition(for route: AuthorizeRoute) -> NavigationTransition {
        switch route {
        case .first:
            let m  = FirstViewItem()
            let v  = FirstView()
            let vm = FirstViewModel(m)
            v.onLoad { v in
                vm.change { s in
                    v.change(s:s)
                }
            }
            return .show(v)
        }
    }
}

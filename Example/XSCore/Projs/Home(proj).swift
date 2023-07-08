//
//  Home(proj).swift
//  XSCore_Example
//
//  Created by khayal on 06.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

enum HomeRoute: Routable {
    case first(HomeDTO)
    static var zero: HomeRoute {
        .first(.init())
    }
}

class Home: Project<HomeRoute> {
    override func prepareTransition(for route: HomeRoute) -> NavigationTransition {
        switch route {
        case let .first(d):
            let m  = FirstViewItem(d)
            let v  = FirstView()
            let vm = FirstViewModel(m)
            vm.change(state: {
                v.change(state: $0)
            })
            return .present(v)
        }
    }
}

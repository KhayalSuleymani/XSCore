//
//  Core.swift
//  XSCore_Example
//
//  Created by khayal on 05.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

enum CoreRoute: Routable {
    case auth(AuthorizeRoute)
    case home(HomeRoute)
    static var zero: CoreRoute {
        .auth(.zero)
    }
}

class Core: Project<CoreRoute> {
    override func prepareTransition(for route: CoreRoute) -> NavigationTransition {
        switch route {
        case let .auth(route):
            let proj = Authorize(v: v)
            return .trigger(route, on: proj)
        case let .home(route):
            let proj = Home(v: v)
            return .trigger(route, on: proj)
        }
    }
}

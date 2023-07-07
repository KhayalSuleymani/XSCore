//
//  Tab(proj).swift
//  XSCore
//
//  Created by khayal on 05.07.23.
//

import XCoordinator

public protocol Projectable: Presentable { }
public protocol Routable: Route, Zero { }

public typealias NavigationTransition = XCoordinator.NavigationTransition

open class TabProject<Route: Routable>: TabBarCoordinator<Route>, Projectable {
    
}

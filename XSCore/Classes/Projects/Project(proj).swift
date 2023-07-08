//
//  Project.swift
//  XSCore
//
//  Created by khayal on 05.07.23.
//

import XCoordinator

public enum AnyRoute: Routable {
    
    case any
    
    public static var zero: AnyRoute {
        .any
    }
}

open class Project<Route: Routable>: NavigationCoordinator<Route>, Projectable {
    
    open var v: RootViewController {
        rootViewController
    }
    
    public convenience init(_ route: Route = .zero) {
        self.init(initialRoute: route)
    }
    
    public convenience init(v: RootViewController) {
        self.init(rootViewController: v, initialRoute: .zero)
    }
}


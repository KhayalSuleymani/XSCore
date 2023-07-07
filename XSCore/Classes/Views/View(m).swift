//
//  View(item).swift
//  XSCore
//
//  Created by khayal on 06.07.23.
//

import Static
import Alamofire

public protocol ViewItemType: AnyObject {
    var sections: [Sec] { get }
}

open class ViewItem<T>: NSObject, ViewItemType {
    
    open var data: T?
    
    public init(_ data: T) {
        self.data = data
        super.init()
    }
    
    open var sections: [Sec] {
        []
    }
    
    open func set (_ data: T) -> Self {
        self.data = data
        return self
    }
}

public typealias Result<T> = AFResult<T>
public typealias Sec = Section
public typealias Row = Static.Row

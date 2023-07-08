//
//  View(vm).swift
//  XSCore
//
//  Created by khayal on 06.07.23.
//

import Foundation

public protocol Stateable {
    associatedtype ViewState
    func change (state: ViewState) -> Self
}

public enum State<D> {
    case e              /// empty
    case l(D?)          /// loading
    case s(Result<D>)   /// result
    case p(Int)         /// paginate
}

open class ViewModel<T>: NSObject, Stateable {
    
    open var data: T
    
    public init (_ data: T) {
        self.data = data
        super.init()
    }
    
    @discardableResult
    open func change (state: @escaping (State<T>)->()) -> Self { self }
}

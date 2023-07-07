//
//  ViewController.swift
//  XSCore
//
//  Created by khayal on 05.07.23.
//

import Static
import Alamofire

open class ViewController<ItemType: ViewItemType>: TableViewController, TableViewDelegate, Stateable {
    
    public typealias Event = (ViewController) -> ()
    
    private(set)var didLoad: Event = { _ in }
    
    public convenience init() {
        self.init(style: .insetGrouped)
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = .init(tableViewDelegate: self)
        tableView.backgroundColor = .white
        didLoad(self)
    }
    
    @discardableResult
    open func change (s: State<ItemType>) -> Self {
        switch s {
        case .s(let s):
            switch s {
            case let .success(m):
                dataSource.sections = m.sections
                stop()
            case let .failure(error):
                print(error)
                stop()
            }
        case let.l(m):
            guard let m = m else { return self }
            dataSource.sections = m.sections
            start()
        case _ :
            break
        }
        return self
    }
    
    @discardableResult
    open func start() -> Self {
        self
    }
    
    @discardableResult
    open func stop() -> Self {
        self
    }
    
    @discardableResult
    open func onLoad (_ didLoad: @escaping Event) -> Self {
        self.didLoad = didLoad
        return self
    }
}

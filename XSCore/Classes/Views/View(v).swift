//
//  ViewController.swift
//  XSCore
//
//  Created by khayal on 05.07.23.
//

import Static
import Alamofire
import ViewAnimator

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
    open func change (state: State<ItemType>) -> Self {
        switch state {
        case let .s(s):
            switch s {
            case let .success(m):
                update(m)
                    .animate ([
                        .zoom(scale: 0.9),
                        .from(direction: .top, offset: 50),
                    ])
                    .stop()
            case let .failure(e):
                show(e)
                    .stop()
            }
        case let.l(m):
            update(m)
                .start()
        case _ : break
        }
        return self
    }
    
    @discardableResult
    open func animate (_ animations: [AnimationType]) -> Self {
        UIView.animate(views: tableView.visibleCells,
                       animations: animations)
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
    
    @discardableResult
    open func show(_ error: AFError) -> Self {
        print(error)
        return self
    }
    
    @discardableResult
    open func update (_ m: ItemType?) -> Self {
        guard let m = m else { return self }
        dataSource.sections = m.sections
        return self
    }
}

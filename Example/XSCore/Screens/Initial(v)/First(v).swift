//
//  First(v).swift
//  XSCore_Example
//
//  Created by khayal on 05.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

protocol FirstViewDelegate: AnyObject {
    @discardableResult
    func onAccount(_ completion: @escaping (Account) -> ()) -> Self
    @discardableResult
    func onTransaction(_ completion: @escaping (Transaction) -> ()) -> Self
}

class FirstView: ViewController<FirstViewItem> {
    
}

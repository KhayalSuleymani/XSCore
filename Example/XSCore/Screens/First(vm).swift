//
//  First(vm).swift
//  XSCore_Example
//
//  Created by khayal on 05.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

class User { }

class FirstViewModel: ViewModel<FirstViewItem> {
    @discardableResult
    override func change(s: ViewState) -> Self {
        s(.l(data))
        return self
    }
}

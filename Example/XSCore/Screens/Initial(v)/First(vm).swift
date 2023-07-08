//
//  First(vm).swift
//  XSCore_Example
//
//  Created by khayal on 05.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

class FirstViewModel: ViewModel<FirstViewItem> {
    @discardableResult
    override func change(state: @escaping ViewState) -> Self {
        HomeNetworkService.shared
            .request(weaks(weak: data, {
                switch $1 {
                case let .success(data):
                    state(.s(.success($0.set(data))))
                case let .failure(e):
                    state(.s(.failure(e)))
                }
            }))
        return self
    }
}

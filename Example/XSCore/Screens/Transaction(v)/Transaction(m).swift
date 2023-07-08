//
//  Transaction(m).swift
//  XSCore_Example
//
//  Created by khayal on 08.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

class TransactionViewItem: ViewItem<Transaction> {
    override var sections: [S] {
        [
            .init(rows: [
                R(text: data.description),
            ])
        ]
    }
}

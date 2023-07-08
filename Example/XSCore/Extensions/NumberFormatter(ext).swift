//
//  NumberFormatter(ext).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import Foundation

extension NumberFormatter {
    public static func amount() -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.decimalSeparator = "."
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter
    }
}

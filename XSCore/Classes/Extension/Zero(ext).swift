//
//  Zero(ext).swift
//  XSCore
//
//  Created by khayal on 06.07.23.
//

import Foundation

public protocol Zero {
    static var zero: Self { get }
}

extension String: Zero {
    public static var zero: String { "" }
}

extension Double: Zero {
    public static var zero: Double { 0 }
}

extension Int: Zero {
    public static var zero: Int { 0 }
}

extension Bool: Zero {
    public static var zero: Bool { false }
}

extension Array: Zero {
    public static var zero: Array<Element> { [] }
}

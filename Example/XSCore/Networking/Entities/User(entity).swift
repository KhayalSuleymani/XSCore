//
//  User(ent).swift
//  XSCore_Example
//
//  Created by khayal on 07.07.23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import XSCore

public class User: Object {
    @Backend() public var id: Int
    @Backend() public var uuid: String
    @Backend() public var username: String
    @Backend() public var firstName: String
    @Backend() public var lastName: String
    @Backend() public var mobileNumber: String
    @Backend() public var patronymic: String
    @Backend() public var email: String
    @Backend() public var customers: [Customer]
    @Backend() public var kobilUsername: String
}

extension User {
    
    public class Customer: Object {
        @Backend() public var customerId: String
        @Backend() public var name: String
        @Backend() public var isDefault: Bool
    }
    
    public var prefixes: String {
        [
            firstName.prefix(1),
            lastName.prefix(1)
        ].joined()
    }
    public var userName: String {
        [
            firstName,
            lastName
        ].joined(separator: " ")
    }
}

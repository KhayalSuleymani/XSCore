//
//  DelegateTests.swift
//  XSCoreTests
//
//  Created by khayal on 30.06.23.
//

import XCTest
@testable import XSCore

class ApplicationTests: XCTestCase {
    func testDelegate () {
        let app = App()
        XCTAssertEqual(app.connection.connections.count, 3)
        XCTAssertTrue(app.application(.shared))
    }
}

class TestFirebase: Connector { }
class TestDynatrace: Connector { }
class TestLocalise: Connector { }

class App: Delegate {
    override var connection: Connector {
        Connector(connections: [
            TestFirebase(),
            TestDynatrace(),
            TestLocalise(),
        ])
    }
}

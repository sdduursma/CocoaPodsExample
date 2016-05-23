//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Samuel Duursma on 23/05/16.
//  Copyright © 2016 Samuel Duursma. All rights reserved.
//

import XCTest
@testable import Example

class ExampleTests: XCTestCase {
    
    func testExample() {
        let counter = Counter()
        XCTAssertEqual(counter.count, 0)
        counter.increaseObserver.sendNext()
        XCTAssertEqual(counter.count, 1)
    }
}

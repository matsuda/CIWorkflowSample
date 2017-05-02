//
//  BirdTests.swift
//  CIWorkflowSample
//
//  Created by Kosuke Matsuda on 2017/05/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import XCTest
@testable import CIWorkflowSample

class BirdTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFly_makesTheBirdFlying() {
        // Arrange
        let bird = Bird()
        // Act
        bird.fly()
        // Assert
        XCTAssertTrue(bird.isFlying)
    }
}

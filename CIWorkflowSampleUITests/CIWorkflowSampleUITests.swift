//
//  CIWorkflowSampleUITests.swift
//  CIWorkflowSampleUITests
//
//  Created by Kosuke Matsuda on 2017/05/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import XCTest

class CIWorkflowSampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // swiftlint:disable:next line_length
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // swiftlint:disable:next line_length
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // swiftlint:disable:next line_length
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}

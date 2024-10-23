//
//  SwiftUITodoUITestsLaunchTests.swift
//  SwiftUITodoUITests
//
//  Created by Luna on 10/23/24.
//  Copyright © 2024 Suyeol Jeon. All rights reserved.
//


import XCTest

final class SwiftUITodoUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Teardown code
    }

    @MainActor
    func testExample() throws {

    
        let tasksNavigationBar = app.navigationBars["Tasks 👀"]
        tasksNavigationBar.buttons["Edit"].tap()

        
        tasksNavigationBar.buttons["Done"].tap()
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                app.launch()
            }
        }
    }
}

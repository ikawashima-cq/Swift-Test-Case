//
//  Unit_Test.swift
//  Unit-Test
//
//  Created by オムラユウキ on 2019/05/26.
//  Copyright © 2019 Swifter. All rights reserved.
//

import XCTest

class Unit_Test: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func test_XCTAssertEqual_success() {
        XCTAssertEqual(5, 5)
    }
    
    func test_XCAssertTrue_success() {
        XCTAssertTrue(true)
        XCTAssertFalse(false)
    }
    
    func test_XCAssertNil_success() {
        let vc: UIViewController? = nil
        XCTAssertNil(vc)
    }
    
    func test_XCAssertNotNil_success() {
        var vc: UIViewController?
        vc = UIViewController()
        XCTAssertNotNil(vc)
    }
    
    func test_XCTestExpectation_success() {
        let exp = XCTestExpectation(description: "test_success")
        DispatchQueue.global(qos: .default).async {
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
    
    func log(text: String ) throws {
        if text.isEmpty {
            throw NSError(domain: "error", code: -1, userInfo: nil)
        }
        print(text)
    }
    
    func test_XCAssertThrowError_success() {
//        XCTAssertThrowsError(try log(text: ""))
        XCTAssertNoThrow(try log(text: "hoge"))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

//
//  IntToStringTest.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//

//
//  HackerNewsTests.swift
//  HackerNewsTests
//
//  Created by Tejasv Singh on 8/13/25.
//

import XCTest
@testable import HackerNews

final class IntToStringTest: XCTestCase {
    var objIntToString: IntToString?

    override func setUpWithError() throws {
        objIntToString = IntToString()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        objIntToString = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
        func test15(){
            let testValue = objIntToString?.NumToString(60)
            XCTAssertEqual(testValue, "FizzBuzz")
        }
    func test3(){
        let testValue = objIntToString?.NumToString(9)
        XCTAssertEqual(testValue, "Fizz")
    }
    func test5(){
        let testValue = objIntToString?.NumToString(40)
        XCTAssertEqual(testValue, "Buzz")
    }
    func testNone(){
        let testValue = objIntToString?.NumToString(11)
        XCTAssertEqual(testValue, "11")
    }
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    

    
   
}

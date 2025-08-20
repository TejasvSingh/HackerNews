//
//  HackerNewsTests.swift
//  HackerNewsTests
//
//  Created by Tejasv Singh on 8/13/25.
//

import XCTest
@testable import HackerNews

final class HackerNewsTests: XCTestCase {
    var objCalculator: Calculator?

    override func setUpWithError() throws {
        objCalculator = Calculator()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        objCalculator = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
        func testSum(){
            let sumValue = objCalculator?.sum(10, 20)
            XCTAssertEqual(sumValue, 30)
            let sumValue1 = objCalculator?.sum(nil, nil)
            XCTAssertEqual(sumValue1, 0)
        }
        func testSubtraction(){
            let subtractionValue = objCalculator?.sub(a: 10, b: 20)
            XCTAssertEqual(subtractionValue, -10)
            let subtractionValue1 = objCalculator?.sub(a: nil, b: nil)
            XCTAssertEqual(subtractionValue1, 0)
        }
        func testMultiplication(){
            let multiplicationValue = objCalculator?.multiply(a: 10, b: 20)
            XCTAssertEqual(multiplicationValue, 200)
            let multiplicationValue1 = objCalculator?.multiply(a: nil, b: nil)
            XCTAssertEqual(multiplicationValue1, 0)
        }
        func testDivision(){
            let divisionValue = objCalculator?.divide(a: 10, b: 2)
            XCTAssertEqual(divisionValue, 5)
            let divisionValue1 = objCalculator?.divide(a: 10, b: 0)
            XCTAssertEqual(divisionValue1, 0)
            let divisionValue2 = objCalculator?.divide(a: nil, b: nil)
            XCTAssertEqual(divisionValue2, 0)
            let divisionValue3 = objCalculator?.divide(a: 4, b: nil)
            XCTAssertEqual(divisionValue3, 0)
            let divisionValue4 = objCalculator?.divide(a: nil, b: 4)
            XCTAssertEqual(divisionValue4, 0)
            let divisionValue5 = objCalculator?.divide(a: nil, b: 0)
            XCTAssertEqual(divisionValue5, 0)
        }
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    

    
   
}

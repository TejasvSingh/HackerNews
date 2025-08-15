//
//  StringReverseTest.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//
import XCTest
@testable import HackerNews

final class StringReverseTest: XCTestCase {
    var objPrime: StringReverse?
    
    override func setUpWithError() throws {
        objPrime = StringReverse()
    }
    override func tearDownWithError() throws {
        objPrime = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testStringReverse() {
        XCTAssertEqual(objPrime?.reverseString("HelloWorld"), "dlroWolleH")
    }
}

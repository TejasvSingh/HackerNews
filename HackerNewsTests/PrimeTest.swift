//
//  PrimeTest.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//
import XCTest
@testable import HackerNews

final class PrimeTest: XCTestCase {
    var objPrime: PrimeNumber?
    
    override func setUpWithError() throws {
        objPrime = PrimeNumber()
    }
    override func tearDownWithError() throws {
        objPrime = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testIsPrime(){
        XCTAssertEqual(objPrime?.isPrime(15), false)
    }
    func testIsPrime1(){
        XCTAssertEqual(objPrime?.isPrime(2), true)
    }
    func testIsPrime2(){
        XCTAssertEqual(objPrime?.isPrime(53), true)
    }
}

//
//  hackerTests.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/18/25.
//

import XCTest
@testable import HackerNews

final class hackerTests: XCTestCase {
    var objLogin: LoginViewController?
    
    override func setUpWithError() throws {
        objLogin = LoginViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        objLogin = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testValidateEmail() {
        let result = objLogin?.loginUsername(email: "tejasvsingh@gmail.com")
        XCTAssertTrue( result ?? false)
        
    }
    
    func testValidatePassword() {
        let result1 = objLogin?.loginPassword(password: "tejasvsingh")
        XCTAssertTrue( result1 ?? false)
    }
}

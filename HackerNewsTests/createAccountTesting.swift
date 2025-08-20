//
//  createAccountTesting.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/18/25.
//

//
//  hackerTests.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/18/25.
//

import XCTest
@testable import HackerNews

final class CreateAccountTesting: XCTestCase {
    private var savedPassword: String?
    var objSignUp: CreateAccountViewController?
    
    override func setUpWithError() throws {
        objSignUp = CreateAccountViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        objSignUp = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testValidateEmail() {
        let result = objSignUp?.createAccountEmail(email: "tejasvsingh@gmail.com")
        XCTAssertTrue( result ?? false)
        
    }
    
    func testValidatePassword() {
        let result1 = objSignUp?.createAccountPassword(password: "tejasvsingh")
        XCTAssertTrue( result1 ?? false)
    }
    func testValidateConfirmPassword() {
        let result1 = objSignUp?.createAccountConfirmPassword(password: "tejasvsingh", confirmPassword: "tejasvsingh")
        XCTAssertTrue( result1 ?? false)
    }
}

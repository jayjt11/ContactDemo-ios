//
//  ContactDemoTests.swift
//  ContactDemoTests
//
//  Created by Jayant Tiwari on 01/06/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import XCTest
@testable import ContactDemo

class ContactDemoTests: XCTestCase {
    
    
    func testSingleContact() {
        
        var contactTest = ContactTests()
        
        var contactList = contactTest.getSingleContact(number: "9787878")
        var number = contactList[0].phoneNumber
        
        var firstName = contactList[0].firstName
        
        var lastName = contactList[0].lastName
        
        var name = firstName + " " + lastName
        
        XCTAssertTrue(!name.isEmpty)
        XCTAssertTrue(number.count >= 9 && number.count <= 15)
        XCTAssertEqual(contactList.count, 1)
        XCTAssertTrue(contactList.count > 0)
        
        
    }
    
    func testAllContacts() {
        
    }

}

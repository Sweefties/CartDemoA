//
//  CartDemoATests.swift
//  CartDemoATests
//
//  Created by Wlad Dicario on 20/01/2018.
//  Copyright © 2018 socle. All rights reserved.
//

import CartDemoA
import XCTest
import ObjectMapper

class CartDemoATests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        FakeManager().shared.doIt()
        MapperManager().shared.doIt()
        _ = MapperManager().shared.mapTest(value: [:])
        _ = MapperManager().shared.mapTest(value: ["username": "bob"])
        let user = Mapper<User>().map(JSON: ["username": "jojo"])
        user?.username = "me"
        XCTAssert(user?.username == "me")
        user?.username = nil
        XCTAssertNil(user?.username)
        let new = User(JSON: [:])
        XCTAssertNil(new?.username)
        var anil = User(JSON: ["username": "bambam"])
        anil = nil
        XCTAssertNil(anil)
        
        XCTAssertNotNil(FakeManager().shared.bundleId())
        
    }
    
    #if os(watchOS)
    func testWatchOnly() {
        WatchManagerOnly().shared.doIt()
    }
    #endif
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

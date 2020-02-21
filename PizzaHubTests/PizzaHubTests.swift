//
//  PizzaHubTests.swift
//  PizzaHubTests
//
//  Created by Ajinkya Wani on 2/13/20.
//  Copyright © 2020 Ajinkya Wani. All rights reserved.
//

import XCTest
@testable import PizzaHub

class PizzaHubTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMenuItemInitSucceeds() {
        let smallPepperoniItem = MenuItem.init(name: "Small Pepperoni", price: 12.50)
        XCTAssertNotNil(smallPepperoniItem)
        
        let largePepperoniItem = MenuItem.init(name: "Large Pepperoni", price: 27.00)
        XCTAssertNotNil(largePepperoniItem)
    }

    func testMenuItemInitFails() {
        let noDescriptionItem = MenuItem.init(name: "", price: 12.20)
        XCTAssertNil(noDescriptionItem)
        
        let negativePriceItem = MenuItem.init(name: "Large Pizza", price: -2.30)
        XCTAssertNil(negativePriceItem)
        
    }
    
    func testShoppingCartAddItem() {
        let smallPepperoniItem = MenuItem.init(name: "Small Pepperoni", price: 12.50)
        let largePepperoniItem = MenuItem.init(name: "Large Pepperoni", price: 27.00)
        
        let cart = ShoppingcCart.init()
        cart.addItem(item: smallPepperoniItem!)
        cart.addItem(item: largePepperoniItem!)
        XCTAssertEqual(2, cart.items.count)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

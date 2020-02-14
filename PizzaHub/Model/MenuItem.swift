//
//  MenuItem.swift
//  PizzaHub
//
//  Created by Ajinkya Wani on 2/13/20.
//  Copyright © 2020 Ajinkya Wani. All rights reserved.
//

class MenuItem {
    
    var name: String
    var price: Double
    
    init?(name: String, price: Double) {
        if name.isEmpty {
            return nil
        }
        if price < 0 {
            return nil
        }
        self.name = name
        self.price = price
    }
    
}

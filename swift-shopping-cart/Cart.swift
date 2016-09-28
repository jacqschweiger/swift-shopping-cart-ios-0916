//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items = [Item]()

    
    //return total cost of all items in array
    func totalPriceInCents() -> Int {
        var total = 0
        
        for item in items {
           total += item.priceInCents
        }
        return total
    }
    
    
    //add the argument to the end of the items property array.
    func add(item: Item) {
        items.append(item)
    }
    
    //remove an instance from the items array that matches the argument item
    func remove(item: Item) {
        items = items.filter { $0 != item }
    }
    
    //collect all of the items in the items property array whose name property matches the submitted string argument.
    func items(withName: String) -> [Item] {
        var newArray: [Item] = []
        for item in items {
            if item.name == withName {
                newArray.append(item)
            }
        }
        return newArray
    }


    //collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
    func items(withMinPrice: Int) -> [Item] {
        var newArray: [Item] = []
        for item in items {
            if item.priceInCents >= withMinPrice {
                newArray.append(item)
            }
        }
        return newArray
    }
    
    //collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument.
    func items(withMaxPrice: Int) -> [Item] {
        var newArray: [Item] = []
        for item in items {
            if item.priceInCents <= withMaxPrice {
                newArray.append(item)
            }
        }
        return newArray
    }
}


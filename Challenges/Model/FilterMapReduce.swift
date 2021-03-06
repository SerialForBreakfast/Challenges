//
//  FilterMapReduce.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

struct Device {
    var type: String
    var price: Float
    var color: String
}

//From Sean Allen's explanation
var myiMacPro       = Device(type: "iMac Pro", price: 4999.00, color: "Space Grey")
var myiPhone6Plus   = Device(type: "iPhone", price: 799.00, color: "White")
var myiPhone7       = Device(type: "iPhone", price: 699.00, color: "Black")
var myiPad          = Device(type: "iPad", price: 599.00, color: "Space Grey")
var myAppleWatch    = Device(type: "Apple Watch", price: 349.00, color: "Space Grey")
var myAppleTV       = Device(type: "Apple TV", price: 199.00, color: "Black")

let myDevices = [myiMacPro, myiPhone6Plus, myiPhone7, myiPad, myAppleWatch, myAppleTV]

//.filter does append to the array of iPhones
let iPhones = myDevices.filter({ $0.type == "iPhone"})


//Use of map.  Alternatively .flatmap returns these values without nils
let canadianPrices: [Float] = myDevices.map({ $0.price * 1.2})
//print(canadianPrices)

//Reduce method ex $500 to import to Canada + all 
let totalCanadianPrices = canadianPrices.reduce(500, +)
//print(totalCanadianPrices)

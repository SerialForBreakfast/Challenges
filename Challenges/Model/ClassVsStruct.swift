//
//  ClassVsStruct.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

class Dog {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

//var myDog1 = Dog(age: 2, name: "Lassie")
//var myDog2 = myDog1
//myDog2.name = "Rin Tin Tin"
//print(myDog1.name)

struct Cat {
    var age: Int
    var name: String
    init(age: Int, name: String){
        self.age = age
        self.name = name
    }
}

//var myCat1 = Cat(age: 3, name: "Garfield")
//var myCat2 = myCat1
//myCat2.name = "Grumpy"
//print(myCat1.name)

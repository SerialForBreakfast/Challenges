//
//  ClassVsStruct.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

public class DogClass {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

public struct CatStruct {
    var age: Int
    var name: String
//    init(age: Int, name: String){
//        self.age = age
//        self.name = name
//    }
}


//
//  DataStructure.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit


//public class LinkedListNode<T> {
//    var value: T
//    var next: LinkedListNode?
//    
//    public init(value: T) {
//        self.value = value
//    }
//}

// A stack contains elements of any type in an array with the following features:  LIFO Last In First Out.  This limited array has the following properties: isEmpty, count, peek, and the methods push and pop.

struct Stack2<T> {
    public var array = [T]() //We initialize an array of the specified type T
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public var count: Int {
        return array.count
    }
    public var peek: T? {
        return array.last
    }
    public mutating func push(_ element: T) {
        return array.append(element)
    }
    public mutating func pop(_ element: T) {
        if array.isEmpty  == false {
            array.popLast()
        }
    }
}



//
//
//
//struct Stack<T> {
//    fileprivate var array = [T]()
//
//    public var isEmpty: Bool {
//        return array.isEmpty
//    }
//
//    public var count: Int {
//        return array.count
//    }
//
//    public var top: T? {
//
//        return array.last
//    }
//
//    public mutating func push(_ element: T) {
//        array.append(element)
//    }
//    public mutating func pop(_ element: T) {
//        if !array.isEmpty {
//            array.popLast()
//        }
//    }
//}

struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public var count: Int {
        return array.count
    }
    public var front: T? {
        if array.isEmpty {
            return nil
            } else {
            return array.first
        }
    }
    mutating public func enqueue(_ element: T) {
        return array.append(element)
    }
    mutating public func dequeue() -> T? {
        if array.isEmpty {
            return array.removeFirst()
        } else {
            return nil
        }
    }
}

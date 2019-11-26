//
//  DataStructure.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit


public class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    
    public init(value: T) {
        self.value = value
    }
}

struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public var top: T? {
        return array.last
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    public mutating func pop(_ element: T) {
        if !array.isEmpty {
            array.popLast()
        }
    }
}

struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public var count: Int {
        return array.count
    }
    mutating public func pop() {
        if array.isEmpty {
            self.array.popLast()
        }
    }
}

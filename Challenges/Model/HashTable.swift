//
//  HashTable.swift
//  Challenges
//
//  Created by Joseph McCraw on 12/6/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation


public struct HashTable<Key:Hashable, Value> {
    typealias Element = (key: Key, value: Value)
    typealias Bucket = [Element]
    
    var buckets: [Bucket]
    
    var count = 0
    
    var isEmpty: Bool { return count == 0}
    
    public init(capacity: Int) {
        assert(capacity > 0)
        buckets = Array<Bucket>(repeatElement([], count: capacity))
    }
    private func index(forKey key: Key) -> Int {
        return abs(key.hashValue % buckets.count)
    }
    private func value(forKey key: Key) -> Value? {
        let index = self.index(forKey: key)
        for element in buckets[index] {
            if element.key == key {
                return element.value
            }
        }
        return nil
    }
    
    public mutating func updateValue(forKey key:Key, value: Value) -> Value? {
        let index = self.index(forKey: key)
        for (i, element) in buckets[index].enumerated() {
            if element.key == key {
                let oldvalue = buckets[index][i].value
                buckets[index][i].value = value
                return oldvalue
            }
        }
        buckets[index].append((key: key, value: value))
        count += 1
        return nil
    }
    public mutating func removeValue(forKey key: Key) -> Value? {
        let index = self.index(forKey: key)
        for (i, element) in buckets[index].enumerated() {
          if element.key == key {
            let oldValue = buckets[index][i].value
            buckets[index].remove(at: i)
            count -= 1
            return oldValue
          }
        }
        return nil
    }
    
    
    public subscript(key: Key) -> Value? {
       get {
         return value(forKey: key)
       }
       set {
         if let value = newValue {
            updateValue(forKey: key, value: value)
         } else {
            removeValue(forKey: key)
         }
       }
     }
    
}


//var hashTable = HashTable<String, String>(capacity: 5)
//hashTable["Joe"] = "McCraw"
//let x = hashTable["Joe"]
//print(x)
//hashTable["Joe"] = "Blow"
//hashTable["Joe"] = nil


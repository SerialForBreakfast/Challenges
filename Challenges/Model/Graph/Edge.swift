//
//  Edge.swift
//  Challenges
//
//  Created by Joseph McCraw on 12/6/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

public enum EdgeType {
    case directed, undirected
}


public struct Edge<T: Hashable> {
    public var source: Vertex<T>
    public var destination: Vertex<T>
    public var weight: Double?
    
}

extension Edge: Hashable {
    public var hashValue: Int {
        return "\(source)\(destination)\(weight)".hashValue
    }
    
    public static func == (lhs: Edge<T>, rhs: Edge<T>) -> Bool {
        return lhs.source == rhs.source && lhs.destination == rhs.destination && lhs.weight == rhs.weight
    }
    
    
}
